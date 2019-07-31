.bytecode 50.0
.class synchronized synthetic com/nd/schoollife/ui/community/view/RecommendCommunityView$1
.super java/lang/Object
.enclosing method com/nd/schoollife/ui/community/view/RecommendCommunityView
.inner class static synthetic inner com/nd/schoollife/ui/community/view/RecommendCommunityView$1

.field static final synthetic '$SwitchMap$com$nd$schoollife$ui$common$task$CallStyle' [I

.method static <clinit>()V
.catch java/lang/NoSuchFieldError from L0 to L1 using L2
.catch java/lang/NoSuchFieldError from L1 to L3 using L4
.catch java/lang/NoSuchFieldError from L3 to L5 using L6
invokestatic com/nd/schoollife/ui/common/task/CallStyle/values()[Lcom/nd/schoollife/ui/common/task/CallStyle;
arraylength
newarray int
putstatic com/nd/schoollife/ui/community/view/RecommendCommunityView$1/$SwitchMap$com$nd$schoollife$ui$common$task$CallStyle [I
L0:
getstatic com/nd/schoollife/ui/community/view/RecommendCommunityView$1/$SwitchMap$com$nd$schoollife$ui$common$task$CallStyle [I
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_INIT Lcom/nd/schoollife/ui/common/task/CallStyle;
invokevirtual com/nd/schoollife/ui/common/task/CallStyle/ordinal()I
iconst_1
iastore
L1:
getstatic com/nd/schoollife/ui/community/view/RecommendCommunityView$1/$SwitchMap$com$nd$schoollife$ui$common$task$CallStyle [I
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_REFLASH Lcom/nd/schoollife/ui/common/task/CallStyle;
invokevirtual com/nd/schoollife/ui/common/task/CallStyle/ordinal()I
iconst_2
iastore
L3:
getstatic com/nd/schoollife/ui/community/view/RecommendCommunityView$1/$SwitchMap$com$nd$schoollife$ui$common$task$CallStyle [I
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_LOADMORE Lcom/nd/schoollife/ui/common/task/CallStyle;
invokevirtual com/nd/schoollife/ui/common/task/CallStyle/ordinal()I
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
