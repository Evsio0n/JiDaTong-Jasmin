.bytecode 50.0
.class synchronized synthetic com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$3
.super java/lang/Object
.enclosing method com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter
.inner class static synthetic inner com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$3

.field static final synthetic '$SwitchMap$com$android$u$weibo$weibo$ui$adapter$ThreeTypeAdapter$ListViewDataType' [I

.method static <clinit>()V
.catch java/lang/NoSuchFieldError from L0 to L1 using L2
.catch java/lang/NoSuchFieldError from L1 to L3 using L4
.catch java/lang/NoSuchFieldError from L3 to L5 using L6
invokestatic com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType/values()[Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType;
arraylength
newarray int
putstatic com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$3/$SwitchMap$com$android$u$weibo$weibo$ui$adapter$ThreeTypeAdapter$ListViewDataType [I
L0:
getstatic com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$3/$SwitchMap$com$android$u$weibo$weibo$ui$adapter$ThreeTypeAdapter$ListViewDataType [I
getstatic com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType/RETWEET Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType;
invokevirtual com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType/ordinal()I
iconst_1
iastore
L1:
getstatic com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$3/$SwitchMap$com$android$u$weibo$weibo$ui$adapter$ThreeTypeAdapter$ListViewDataType [I
getstatic com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType/COMMENT Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType;
invokevirtual com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType/ordinal()I
iconst_2
iastore
L3:
getstatic com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$3/$SwitchMap$com$android$u$weibo$weibo$ui$adapter$ThreeTypeAdapter$ListViewDataType [I
getstatic com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType/LIKE Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType;
invokevirtual com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType/ordinal()I
iconst_3
iastore
L5:
return
L6:
astore 0
return
L4:
astore 0
goto L3
L2:
astore 0
goto L1
.limit locals 1
.limit stack 3
.end method
