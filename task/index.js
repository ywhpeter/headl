const request = require('request');
const cheerio = require('cheerio');
const wallpaper = require('wallpaper');
const iconv = require('iconv-lite');
const async = require('async');
const mysql = require('mysql');
const filter = require('bloom-filter-x');
const fs = require('fs');


// const connection = mysql.createConnection({
//     host: 'localhost',
//     user: 'root',
//     password: '',
//     database: 'ww1820'
// });
//查
// connection.connect();
//
// var select_sql = 'select * from stu where id= ?';
// connection.query(select_sql, [id], function (err, results, fields) {
//     if (err) throw err;
//     console.log(results);
//     // connection.end();
// })
// 增
// let insert_sql = 'insert into stu (name,sex,age)values(?,?,?)';
// connection.query(insert_sql, ['aaa', 'aaa', 'aaa'], function (error, results, fields) {
//     if (error) throw error;
//     console.log(results.insertId);
// })

// //改
// let update_sql = 'update stu set sex=?where id =?';
// connection.query(update_sql, ['abc',105], function (error, results, fields) {
//     if (error) throw error;
//     console.log(results.affectedRows );
// })

// //删
// let delete_sql = 'delete from stu where id =?';
// connection.query(delete_sql, [105], function (error, results, fields) {
//     if (error) throw error;
//     console.log(results.affectedRows );
// })

//for直接输出a*3 async依次输出url1,url2,url3,
// for (let i = 0; i < 3; i++) {
//     setTimeout(function () {
//         console.log('a')
//     }, 1000)
//
// }
// async.eachLimit(['url1', 'url2', 'url3'], 1, function (v, next) {
//     setTimeout(function () {
//         console.log(v);
//         next(null);
//     }, 1000)
// })

// //中关春在线新闻列表
//1.初始化布隆过滤器
//从数据库中读取已有url，添加到布隆过滤器中
//2.定时抓取新闻网站上的数据；
//根据布隆过滤器去判定有没有新的新闻
function fetch_news() {
    request({url: 'http://news.zol.com.cn/', encoding: null}, function (err, res, body) {
            body = iconv.decode(body, 'gb2312');
            let $ = cheerio.load(body);

            let urls = [];
            $('.content-list li').slice(0,5).each(function (k, v) {
                let url = $(v).find('.info-mod a').attr('href');
                if (filter.add(url)) {
                    urls.push(url);
                }
            });
            if (!urls.length) {
                let d = new Date();
                console.log(d.toUTCString() + '抓去了依次，本次没有更新')

            } else {
                let d = new Date();
                console.log(d.toUTCString() + '抓去了依次，本次更新' + urls.length + '条');
                async.eachLimit(urls, 1, function (v, next) {
                    request({
                            url: v
                        }, function (err, res, body) {
                           if(err){
                               console.log(err.message)
                           }else{
                               console.log(v)
                           }
                           next(null)
                        }
                    )
                })
            }
        }
    )
}
fetch_news();
setInterval(fetch_news, 10000);

//setInterval
//url 去重
// const connection = mysql.createConnection({
//     host: 'localhost',
//     user: 'root',
//     password: '',
//     database: 'w1805'
// });
// request(
//     {url: 'http://news.zol.com.cn/',
//     encoding:null
//     }, function (err, res, body) {
//         body=iconv.decode(body,'gb2312');
//         let $=cheerio.load(body);
//
//         async.eachLimit( $('.content-list li'),1,(function(v,next){
//             let t=$(v).find('.info-mod a');
//             let title=t.text();
//             let dsc=$(v).find('p').contents().eq(0).text();
//             let image=$(v).find('img').attr('.src');
//                 console.log(title)
//             let url=t.attr('href');
//             let insert_sql = 'insert into nmb (title,dsc,content)values(?,?,?)';
//             connection.query(insert_sql, [title, dsc, image], function (error, results, fields) {
//                 if (error) throw error;
//                 console.log(results.insertId);
//             })
//             request({url:url,encoding:null},
//                 function(err,res,body){
//                     body=iconv.decode(body,'gb2312');
//                     // console.log(body)
//                     let $=cheerio.load(body);
//                     let pubtime=$('#pubtime_baidu').attr('content');
//                     let content=$('#article-content').html();
//                     // console.log(content)
//
//                 })
//             next(null);
//         }))
//
//     })

//百度图片
// request.get(
//     'http://www.baidu.com',
//     function(err, res, body) {
//     let $=cheerio.load(body);
//     $('img').each(function(k,v){
//
//         let src=$(v).attr('src');
//
//         if(!src.startsWith('http:')){
//             src='http:'+src;
//
//         }
//         console.log(src)
//     })
// }
// )

// 站酷图片
// request({
//     url: 'https://www.zcool.com.cn/'
// }, function(err, res, body) {
//     let $ = cheerio.load(body)
//     $('.card-img img')
// .each(function (k, v) {
//     let t = $(v).attr('srcset');
//     if (t) {
//         let src = t.split(' ')[0];
//         console.log(src)
//         request(src).pipe(fs.createWriteStream('./zk-' + k + '.jpg'))
//
//     }
// })
// }
// );
//bing图片
// request(
//     {url: 'http://cn.bing.com/'}, function (err, res, body) {
//         let $ = cheerio.load(body)
// // console.log(body)
//         $('img').each(function (k, v) {
//             let t = $(v).attr('src');
//
//             if (t && t.endsWith('.jpg')) {
//                 let src = 'http://cn.bing.com' + t;
//                 // console.log(src)
//                 let ws = fs.createWriteStream('./bing-' + k + '.jpg');
//                 request(src).pipe(ws);
//
//                 ws.on('finish', function () {
//                     console.log('ok')
//                     wallpaper.set('./bing-' + k + '.jpg').then(function () {
//
//                         console.log('done')
//                     })
//                 })
//             }
//
//         })
//     }
// )


