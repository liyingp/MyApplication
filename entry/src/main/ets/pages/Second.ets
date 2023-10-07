import router from '@ohos.router';

@Entry
@Component
struct Second {
  @State message: string = '第二页';
  @State src: string = router.getParams()?.['src']

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Text(this.src)
          .fontSize(30)
          .fontWeight(FontWeight.Lighter)
        Blank()
        Button('下一步')
          .onClick(() => {
            console.log(this.src)
            router.pushUrl({
              url: 'pages/SanPage',
              params: {
                src: this.src
              }
            })
          })
        Button("上一步")
          .onClick(() => {
            router.pushUrl({
              url : 'pages/Index'
            })
          })
      }
      .width('100%').height(140)
    }
    .height('100%').backgroundColor(Color.Yellow)
  }
}