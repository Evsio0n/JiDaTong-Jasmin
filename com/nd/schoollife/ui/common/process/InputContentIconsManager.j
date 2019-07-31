.bytecode 50.0
.class public final synchronized enum com/nd/schoollife/ui/common/process/InputContentIconsManager
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/schoollife/ui/common/process/InputContentIconsManager;>;"

.field private static final synthetic '$VALUES' [Lcom/nd/schoollife/ui/common/process/InputContentIconsManager;

.field public static final enum 'INSTANCE' Lcom/nd/schoollife/ui/common/process/InputContentIconsManager;

.field private 'mCommentIcon' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/nd/schoollife/common/bean/structure/CommentIconBean;>;"

.field private 'mReplyIcon' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/nd/schoollife/common/bean/structure/CommentIconBean;>;"

.field private 'mType' Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;

.method static <clinit>()V
new com/nd/schoollife/ui/common/process/InputContentIconsManager
dup
ldc "INSTANCE"
iconst_0
invokespecial com/nd/schoollife/ui/common/process/InputContentIconsManager/<init>(Ljava/lang/String;I)V
putstatic com/nd/schoollife/ui/common/process/InputContentIconsManager/INSTANCE Lcom/nd/schoollife/ui/common/process/InputContentIconsManager;
iconst_1
anewarray com/nd/schoollife/ui/common/process/InputContentIconsManager
dup
iconst_0
getstatic com/nd/schoollife/ui/common/process/InputContentIconsManager/INSTANCE Lcom/nd/schoollife/ui/common/process/InputContentIconsManager;
aastore
putstatic com/nd/schoollife/ui/common/process/InputContentIconsManager/$VALUES [Lcom/nd/schoollife/ui/common/process/InputContentIconsManager;
return
.limit locals 0
.limit stack 4
.end method

.method private <init>(Ljava/lang/String;I)V
.signature "()V"
aload 0
aload 1
iload 2
invokespecial java/lang/Enum/<init>(Ljava/lang/String;I)V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/schoollife/ui/common/process/InputContentIconsManager/mReplyIcon Ljava/util/ArrayList;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/schoollife/ui/common/process/InputContentIconsManager/mCommentIcon Ljava/util/ArrayList;
aload 0
getstatic com/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE/COMMENT Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;
putfield com/nd/schoollife/ui/common/process/InputContentIconsManager/mType Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;
return
.limit locals 3
.limit stack 3
.end method

.method private initIconList(Landroid/content/Context;)V
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentIconsManager/mCommentIcon Ljava/util/ArrayList;
new com/nd/schoollife/common/bean/structure/CommentIconBean
dup
aload 1
getstatic com/nd/schoollife/R$string/local_image_lib I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
getstatic com/nd/schoollife/R$drawable/ic_comment_pic I
invokespecial com/nd/schoollife/common/bean/structure/CommentIconBean/<init>(Ljava/lang/String;I)V
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentIconsManager/mCommentIcon Ljava/util/ArrayList;
new com/nd/schoollife/common/bean/structure/CommentIconBean
dup
aload 1
getstatic com/nd/schoollife/R$string/take_photo I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
getstatic com/nd/schoollife/R$drawable/ic_comment_photo I
invokespecial com/nd/schoollife/common/bean/structure/CommentIconBean/<init>(Ljava/lang/String;I)V
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentIconsManager/mCommentIcon Ljava/util/ArrayList;
new com/nd/schoollife/common/bean/structure/CommentIconBean
dup
aload 1
getstatic com/nd/schoollife/R$string/comment_at I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
getstatic com/nd/schoollife/R$drawable/ic_comment_at I
invokespecial com/nd/schoollife/common/bean/structure/CommentIconBean/<init>(Ljava/lang/String;I)V
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentIconsManager/mReplyIcon Ljava/util/ArrayList;
new com/nd/schoollife/common/bean/structure/CommentIconBean
dup
aload 1
getstatic com/nd/schoollife/R$string/comment_at I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
getstatic com/nd/schoollife/R$drawable/ic_comment_at I
invokespecial com/nd/schoollife/common/bean/structure/CommentIconBean/<init>(Ljava/lang/String;I)V
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
return
.limit locals 2
.limit stack 5
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nd/schoollife/ui/common/process/InputContentIconsManager;
ldc com/nd/schoollife/ui/common/process/InputContentIconsManager
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/schoollife/ui/common/process/InputContentIconsManager
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nd/schoollife/ui/common/process/InputContentIconsManager;
getstatic com/nd/schoollife/ui/common/process/InputContentIconsManager/$VALUES [Lcom/nd/schoollife/ui/common/process/InputContentIconsManager;
invokevirtual [Lcom/nd/schoollife/ui/common/process/InputContentIconsManager;/clone()Ljava/lang/Object;
checkcast [Lcom/nd/schoollife/ui/common/process/InputContentIconsManager;
areturn
.limit locals 0
.limit stack 1
.end method

.method public getIcon(Landroid/content/Context;Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;)Ljava/util/ArrayList;
.signature "(Landroid/content/Context;Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;)Ljava/util/ArrayList<Lcom/nd/schoollife/common/bean/structure/CommentIconBean;>;"
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentIconsManager/mReplyIcon Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/isEmpty()Z
ifeq L0
aload 0
aload 1
invokespecial com/nd/schoollife/ui/common/process/InputContentIconsManager/initIconList(Landroid/content/Context;)V
L0:
aload 0
aload 2
putfield com/nd/schoollife/ui/common/process/InputContentIconsManager/mType Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;
aload 2
getstatic com/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE/COMMENT Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;
if_acmpne L1
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentIconsManager/mCommentIcon Ljava/util/ArrayList;
areturn
L1:
aload 2
getstatic com/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE/REPLY Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;
if_acmpne L2
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentIconsManager/mReplyIcon Ljava/util/ArrayList;
areturn
L2:
aconst_null
areturn
.limit locals 3
.limit stack 2
.end method

.method public getType()Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentIconsManager/mType Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;
areturn
.limit locals 1
.limit stack 1
.end method
