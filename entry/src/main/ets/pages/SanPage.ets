import router from '@ohos.router'

@Entry
@Component
struct SanPage {
  @State message: string = '第三页'
  @State src : string  = router.getParams()?.['src']
  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Text(this.src)
          .fontSize(30)
          .fontWeight(FontWeight.Bold)
        Blank()
        Button("首页")
          .onClick(() => {
            router.back({url : 'pages/Index'})
          })
        Button("上一步")
          .onClick(() => {
            router.pushUrl({
              url : 'pages/Second'
            })
          })
        Button("退出")
          .onClick(() => {
            router.pushUrl({
              url: 'pages/FreePage'
            })
          })
      }
      .width('100%').height(140)
    }
    .height('100%').backgroundColor(Color.Red)
  }
}