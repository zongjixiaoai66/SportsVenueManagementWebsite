const base = {
    get() {
        return {
            url : "http://localhost:8080/xiaoyuantiyuchangguan/",
            name: "xiaoyuantiyuchangguan",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/xiaoyuantiyuchangguan/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "校园体育场馆（设施）使用管理网站"
        } 
    }
}
export default base
