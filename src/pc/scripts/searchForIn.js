const { exec } = require('child_process')
const fs = require('fs')
const path = require('path')

const fromDir = process.argv[2]
let searchDirs = []

for (var x = 0; x < process.argv.length; x++) {
    if ( x > 2 ) searchDirs.push(process.argv[x])
}

const searchDir = (dir, file) => {
    return new Promise((resolve, reject) => {
        exec(`find ${dir} -iname ${file}`, (error,stdout,stderr) => {
            if (stdout.length == 0) reject()
            else resolve()
        })
    })
}

const traverseFiles = (files) => {
    return new Promise((resolve, reject) => {
        let filesNotFound = []
        let filesFound = []
        files.forEach((file, i) => {
            searchDir(searchDirs[0], file)
            .then(() => {
                filesFound.push(file)
                if (i == files.length - 1) resolve(filesNotFound)
            })
            .catch((error) => {
                searchDir(searchDirs[1], file)
                .then(() => {
                    filesFound.push(file)
                    if (i == files.length - 1) resolve(filesNotFound)
                })
                .catch((error) => {
                    filesNotFound.push(file)
                    if (i == files.length - 1) resolve(filesNotFound)
                })
            })
        })
    })
}

fs.readdir(fromDir, function (err, files) {
    if (err) console.log(err);
    else {
        traverseFiles(files)
        .then((filesNotFound) => {
            console.log(`\nDONE files NOT found:\n${JSON.stringify(filesNotFound,null,4)}`)
        })
    }
})
