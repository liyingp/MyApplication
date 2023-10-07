import router from '@ohos.router';

@Entry
@Component
struct FreePage {
  @State message: string = 'Hello World'
  controller : TextInputController = new TextInputController()
  @State title : String  = "登录页面"
  @State titleT : String  = "输入账号以使用更多服务"

  build() {
    Row() {
      Column() {
        // Text('HarmonyOS')
        //   .textAlign(TextAlign.End)
        //   .width(200)
        // Text('HarmonyOS')
        //   .fontSize(30)
        //   .fontWeight(FontWeight.Bold)
        //   .fontColor(Color.Blue)
        //   .fontStyle(FontStyle.Italic)
        //   .fontFamily('Arial')
        //   .decoration({ type: TextDecorationType.Underline, color: Color.Blue })
        // Text('This is the text content of Text Component This is the text content of Text Component')
        //   .fontSize(16)
        //   .maxLines(1)
        //   .textOverflow({ overflow: TextOverflow.Ellipsis })
        // TextInput( {controller:this.controller})
        // Button('设置光标位置')
        //   .onClick(() => {
        //     this.controller.caretPosition(2)
        //   })
        Image($r("app.media.app_icon"))
          .width(100)
          .height(100)

        Text($r('app.string.login_title'))
          .fontSize(30)
          .fontWeight(FontWeight.Bolder)
        Text($r('app.string.login_titleT'))
          .fontSize(16)
        // 输入单行文本
        TextInput({ placeholder:'请输入账号'})
          .placeholderColor(Color.Black)
          .placeholderFont({ size: 16, family: 'cursive', style: FontStyle.Italic })
        TextInput({ placeholder: '请输入密码' })
          .placeholderColor(Color.Black)
          .placeholderFont({ size: 16, family: 'cursive', style: FontStyle.Italic })
          .type(InputType.Password)
        Button($r('app.string.login_text'), { type: ButtonType.Normal, stateEffect: true })
          .onClick(() => {
            router.pushUrl({
              url: 'pages/Index'
            })
          })
          .width('90%')
          .height(40)
          .fontSize(16)
          .fontWeight(FontWeight.Medium)
          .backgroundColor('#007DFF')
        // LoadingProgress()
        //   .color(Color.Blue)
        //   .height(60)
        //   .width(60)


      }
      .width('100%')
    }
    .height('100%')
  }
}