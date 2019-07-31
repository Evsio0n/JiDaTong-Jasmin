.bytecode 50.0
.class synchronized synthetic com/nd/teamfile/helper/FileIconLoader$1
.super java/lang/Object
.enclosing method com/nd/teamfile/helper/FileIconLoader
.inner class static synthetic inner com/nd/teamfile/helper/FileIconLoader$1

.field static final synthetic '$SwitchMap$com$nd$teamfile$helper$FileCategoryHelper$FileCategory' [I

.method static <clinit>()V
.catch java/lang/NoSuchFieldError from L0 to L1 using L2
.catch java/lang/NoSuchFieldError from L1 to L3 using L4
.catch java/lang/NoSuchFieldError from L3 to L5 using L6
invokestatic com/nd/teamfile/helper/FileCategoryHelper$FileCategory/values()[Lcom/nd/teamfile/helper/FileCategoryHelper$FileCategory;
arraylength
newarray int
putstatic com/nd/teamfile/helper/FileIconLoader$1/$SwitchMap$com$nd$teamfile$helper$FileCategoryHelper$FileCategory [I
L0:
getstatic com/nd/teamfile/helper/FileIconLoader$1/$SwitchMap$com$nd$teamfile$helper$FileCategoryHelper$FileCategory [I
getstatic com/nd/teamfile/helper/FileCategoryHelper$FileCategory/Apk Lcom/nd/teamfile/helper/FileCategoryHelper$FileCategory;
invokevirtual com/nd/teamfile/helper/FileCategoryHelper$FileCategory/ordinal()I
iconst_1
iastore
L1:
getstatic com/nd/teamfile/helper/FileIconLoader$1/$SwitchMap$com$nd$teamfile$helper$FileCategoryHelper$FileCategory [I
getstatic com/nd/teamfile/helper/FileCategoryHelper$FileCategory/Picture Lcom/nd/teamfile/helper/FileCategoryHelper$FileCategory;
invokevirtual com/nd/teamfile/helper/FileCategoryHelper$FileCategory/ordinal()I
iconst_2
iastore
L3:
getstatic com/nd/teamfile/helper/FileIconLoader$1/$SwitchMap$com$nd$teamfile$helper$FileCategoryHelper$FileCategory [I
getstatic com/nd/teamfile/helper/FileCategoryHelper$FileCategory/Video Lcom/nd/teamfile/helper/FileCategoryHelper$FileCategory;
invokevirtual com/nd/teamfile/helper/FileCategoryHelper$FileCategory/ordinal()I
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
