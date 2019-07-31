.bytecode 50.0
.class synchronized abstract com/nd/teamfile/helper/FileIconLoader$ImageHolder
.super java/lang/Object
.inner class private static abstract ImageHolder inner com/nd/teamfile/helper/FileIconLoader$ImageHolder outer com/nd/teamfile/helper/FileIconLoader

.field public static final 'LOADED' I = 2


.field public static final 'LOADING' I = 1


.field public static final 'NEEDED' I = 0


.field 'state' I

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method synthetic <init>(Lcom/nd/teamfile/helper/FileIconLoader$1;)V
aload 0
invokespecial com/nd/teamfile/helper/FileIconLoader$ImageHolder/<init>()V
return
.limit locals 2
.limit stack 1
.end method

.method public static create(Lcom/nd/teamfile/helper/FileCategoryHelper$FileCategory;)Lcom/nd/teamfile/helper/FileIconLoader$ImageHolder;
getstatic com/nd/teamfile/helper/FileIconLoader$1/$SwitchMap$com$nd$teamfile$helper$FileCategoryHelper$FileCategory [I
aload 0
invokevirtual com/nd/teamfile/helper/FileCategoryHelper$FileCategory/ordinal()I
iaload
tableswitch 1
L0
L1
L1
default : L2
L2:
aconst_null
areturn
L0:
new com/nd/teamfile/helper/FileIconLoader$DrawableHolder
dup
aconst_null
invokespecial com/nd/teamfile/helper/FileIconLoader$DrawableHolder/<init>(Lcom/nd/teamfile/helper/FileIconLoader$1;)V
areturn
L1:
new com/nd/teamfile/helper/FileIconLoader$BitmapHolder
dup
aconst_null
invokespecial com/nd/teamfile/helper/FileIconLoader$BitmapHolder/<init>(Lcom/nd/teamfile/helper/FileIconLoader$1;)V
areturn
.limit locals 1
.limit stack 3
.end method

.method public abstract isNull()Z
.end method

.method public abstract setImage(Ljava/lang/Object;)V
.end method

.method public abstract setImageView(Landroid/widget/ImageView;)Z
.end method
