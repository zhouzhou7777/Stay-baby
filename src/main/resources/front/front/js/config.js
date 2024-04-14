
var projectName = '留守儿童爱心网站';
/**
 * 轮播图配置
 */
var swiper = {
	// 设定轮播容器宽度，支持像素和百分比
	width: '100%',
	height: '400px',
	// hover（悬停显示）
	// always（始终显示）
	// none（始终不显示）
	arrow: 'none',
	// default（左右切换）
	// updown（上下切换）
	// fade（渐隐渐显切换）
	anim: 'default',
	// 自动切换的时间间隔
	// 默认3000
	interval: 2000,
	// 指示器位置
	// inside（容器内部）
	// outside（容器外部）
	// none（不显示）
	indicator: 'outside'
}

/**
 * 个人中心菜单
 */
var centerMenu = [{
	name: '个人中心',
	url: '../' + localStorage.getItem('userTable') + '/center.html'
}, 
]


var indexNav = [

{
	name: '宣传新闻',
	url: './pages/xuanchuanxinwen/list.html'
}, 
{
	name: '志愿活动',
	url: './pages/zhiyuanhuodong/list.html'
}, 
{
	name: '爱心捐赠',
	url: './pages/aixinjuanzeng/list.html'
}, 

]

var adminurl =  "http://localhost:8080/springboot60h87/admin/dist/index.html";

var cartFlag = false

var chatFlag = false




var menu = [{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-album","buttons":["新增","查看","修改","删除"],"menu":"用户","menuJump":"列表","tableName":"yonghu"}],"menu":"用户管理"},{"child":[{"appFrontIcon":"cuIcon-explore","buttons":["新增","查看","修改","删除","查看评论"],"menu":"宣传新闻","menuJump":"列表","tableName":"xuanchuanxinwen"}],"menu":"宣传新闻管理"},{"child":[{"appFrontIcon":"cuIcon-vip","buttons":["新增","查看","修改","删除"],"menu":"志愿活动","menuJump":"列表","tableName":"zhiyuanhuodong"}],"menu":"志愿活动管理"},{"child":[{"appFrontIcon":"cuIcon-medal","buttons":["新增","查看","修改","删除"],"menu":"爱心捐赠","menuJump":"列表","tableName":"aixinjuanzeng"}],"menu":"爱心捐赠管理"},{"child":[{"appFrontIcon":"cuIcon-flashlightopen","buttons":["查看","修改","删除"],"menu":"旧物捐赠","menuJump":"列表","tableName":"jiuwujuanzeng"}],"menu":"旧物捐赠管理"},{"child":[{"appFrontIcon":"cuIcon-explore","buttons":["查看","修改","删除","审核"],"menu":"活动报名","menuJump":"列表","tableName":"huodongbaoming"}],"menu":"活动报名管理"},{"child":[{"appFrontIcon":"cuIcon-wenzi","buttons":["查看","修改"],"menu":"轮播图管理","tableName":"config"}],"menu":"系统管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-wenzi","buttons":["查看"],"menu":"宣传新闻列表","menuJump":"列表","tableName":"xuanchuanxinwen"}],"menu":"宣传新闻模块"},{"child":[{"appFrontIcon":"cuIcon-discover","buttons":["查看","活动报名"],"menu":"志愿活动列表","menuJump":"列表","tableName":"zhiyuanhuodong"}],"menu":"志愿活动模块"},{"child":[{"appFrontIcon":"cuIcon-form","buttons":["查看","旧物捐赠","金额捐赠"],"menu":"爱心捐赠列表","menuJump":"列表","tableName":"aixinjuanzeng"}],"menu":"爱心捐赠模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-flashlightopen","buttons":["查看","删除"],"menu":"旧物捐赠","menuJump":"列表","tableName":"jiuwujuanzeng"}],"menu":"旧物捐赠管理"},{"child":[{"appFrontIcon":"cuIcon-explore","buttons":["查看","删除"],"menu":"活动报名","menuJump":"列表","tableName":"huodongbaoming"}],"menu":"活动报名管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-wenzi","buttons":["查看"],"menu":"宣传新闻列表","menuJump":"列表","tableName":"xuanchuanxinwen"}],"menu":"宣传新闻模块"},{"child":[{"appFrontIcon":"cuIcon-discover","buttons":["查看","活动报名"],"menu":"志愿活动列表","menuJump":"列表","tableName":"zhiyuanhuodong"}],"menu":"志愿活动模块"},{"child":[{"appFrontIcon":"cuIcon-form","buttons":["查看","旧物捐赠","金额捐赠"],"menu":"爱心捐赠列表","menuJump":"列表","tableName":"aixinjuanzeng"}],"menu":"爱心捐赠模块"}],"hasBackLogin":"否","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"用户","tableName":"yonghu"}]


var isAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].backMenu.length;j++){
                for(let k=0;k<menus[i].backMenu[j].child.length;k++){
                    if(tableName==menus[i].backMenu[j].child[k].tableName){
                        let buttons = menus[i].backMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}

var isFrontAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].frontMenu.length;j++){
                for(let k=0;k<menus[i].frontMenu[j].child.length;k++){
                    if(tableName==menus[i].frontMenu[j].child[k].tableName){
                        let buttons = menus[i].frontMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}
