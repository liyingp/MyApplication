import router from '@ohos.router';
let msg : string = 'Index页面传来的数据'
@Entry
@Component
struct Index {
  @State message: string = '初始页'

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Blank()
        Button('下一步')
          .onClick(() => {
            // 点击事件处理
            router.pushUrl({
              url: 'pages/Second',
              params:{
                src : msg,
              }
            })
          })

      }
      .width('100%').height(140)
    }
    .height('100%').backgroundColor(0xF1F3F5)
  }
}