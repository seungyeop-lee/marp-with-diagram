//https://github.com/kazumatu981/markdown-it-kroki?tab=readme-ov-file#3rd-step-create-marpconfigjs

module.exports = {
    engine: ({marp}) => marp.use(require('@kazumatu981/markdown-it-kroki'), {
        entrypoint: "http://localhost:18000"
    })
}
