.bytecode 50.0
.class synchronized synthetic com/nd/schoollife/ui/common/util/PostUtils$1
.super java/lang/Object
.enclosing method com/nd/schoollife/ui/common/util/PostUtils
.inner class static synthetic inner com/nd/schoollife/ui/common/util/PostUtils$1

.field static final synthetic '$SwitchMap$com$nd$schoollife$common$bean$structure$TagPosition$TAG_TYPE' [I

.method static <clinit>()V
.catch java/lang/NoSuchFieldError from L0 to L1 using L2
.catch java/lang/NoSuchFieldError from L1 to L3 using L4
.catch java/lang/NoSuchFieldError from L3 to L5 using L6
invokestatic com/nd/schoollife/common/bean/structure/TagPosition$TAG_TYPE/values()[Lcom/nd/schoollife/common/bean/structure/TagPosition$TAG_TYPE;
arraylength
newarray int
putstatic com/nd/schoollife/ui/common/util/PostUtils$1/$SwitchMap$com$nd$schoollife$common$bean$structure$TagPosition$TAG_TYPE [I
L0:
getstatic com/nd/schoollife/ui/common/util/PostUtils$1/$SwitchMap$com$nd$schoollife$common$bean$structure$TagPosition$TAG_TYPE [I
getstatic com/nd/schoollife/common/bean/structure/TagPosition$TAG_TYPE/AT Lcom/nd/schoollife/common/bean/structure/TagPosition$TAG_TYPE;
invokevirtual com/nd/schoollife/common/bean/structure/TagPosition$TAG_TYPE/ordinal()I
iconst_1
iastore
L1:
getstatic com/nd/schoollife/ui/common/util/PostUtils$1/$SwitchMap$com$nd$schoollife$common$bean$structure$TagPosition$TAG_TYPE [I
getstatic com/nd/schoollife/common/bean/structure/TagPosition$TAG_TYPE/SMILEY Lcom/nd/schoollife/common/bean/structure/TagPosition$TAG_TYPE;
invokevirtual com/nd/schoollife/common/bean/structure/TagPosition$TAG_TYPE/ordinal()I
iconst_2
iastore
L3:
getstatic com/nd/schoollife/ui/common/util/PostUtils$1/$SwitchMap$com$nd$schoollife$common$bean$structure$TagPosition$TAG_TYPE [I
getstatic com/nd/schoollife/common/bean/structure/TagPosition$TAG_TYPE/URL Lcom/nd/schoollife/common/bean/structure/TagPosition$TAG_TYPE;
invokevirtual com/nd/schoollife/common/bean/structure/TagPosition$TAG_TYPE/ordinal()I
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
