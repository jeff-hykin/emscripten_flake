import $ from "https://deno.land/x/dax@0.39.2/mod.ts"
import { hasCommand } from "https://deno.land/x/quickr@0.6.66/main/run.js"
import { Console, red, lightRed, yellow, green, cyan, dim, bold, clearAnsiStylesFrom } from "https://deno.land/x/quickr@0.6.66/main/console.js"

export async function getVersionStringFromCommand() {
    let versionString
    let err
    try {
        if (!await hasCommand("emcc")) {
            const { version } = await import("./version.js")
            return `${version.major}.${version.minor}.${version.patch}`
        }
        const textOutput = clearAnsiStylesFrom(await $`emcc --version`.text())
        versionString = textOutput.match(/\d+\.\d+\.\d+/)[0]
        // versionString = textOutput.match(/\d+\.\d+\.\d+[\w-]*/)[0]
    } catch (error) {
        err = error
    }
    if (err || versionString.length<5) {
        throw Error(`I couldn't get the version from the output of running the command: ${versionString}`)
    }
    return versionString
}