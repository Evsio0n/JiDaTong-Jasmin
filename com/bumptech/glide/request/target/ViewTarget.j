.bytecode 50.0
.class public synchronized abstract com/bumptech/glide/request/target/ViewTarget
.super com/bumptech/glide/request/target/BaseTarget
.signature "<T:Landroid/view/View;Z:Ljava/lang/Object;>Lcom/bumptech/glide/request/target/BaseTarget<TZ;>;"
.inner class private static SizeDeterminer inner com/bumptech/glide/request/target/ViewTarget$SizeDeterminer outer com/bumptech/glide/request/target/ViewTarget
.inner class private static SizeDeterminerLayoutListener inner com/bumptech/glide/request/target/ViewTarget$SizeDeterminer$SizeDeterminerLayoutListener outer com/bumptech/glide/request/target/ViewTarget

.field private static final 'TAG' Ljava/lang/String; = "ViewTarget"

.field private static 'isTagUsedAtLeastOnce' Z

.field private static 'tagId' Ljava/lang/Integer;

.field private final 'sizeDeterminer' Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;

.field protected final 'view' Landroid/view/View; signature "TT;"

.method static <clinit>()V
iconst_0
putstatic com/bumptech/glide/request/target/ViewTarget/isTagUsedAtLeastOnce Z
aconst_null
putstatic com/bumptech/glide/request/target/ViewTarget/tagId Ljava/lang/Integer;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>(Landroid/view/View;)V
.signature "(TT;)V"
aload 0
invokespecial com/bumptech/glide/request/target/BaseTarget/<init>()V
aload 1
ifnonnull L0
new java/lang/NullPointerException
dup
ldc "View must not be null!"
invokespecial java/lang/NullPointerException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
aload 1
putfield com/bumptech/glide/request/target/ViewTarget/view Landroid/view/View;
aload 0
new com/bumptech/glide/request/target/ViewTarget$SizeDeterminer
dup
aload 1
invokespecial com/bumptech/glide/request/target/ViewTarget$SizeDeterminer/<init>(Landroid/view/View;)V
putfield com/bumptech/glide/request/target/ViewTarget/sizeDeterminer Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;
return
.limit locals 2
.limit stack 4
.end method

.method private getTag()Ljava/lang/Object;
getstatic com/bumptech/glide/request/target/ViewTarget/tagId Ljava/lang/Integer;
ifnonnull L0
aload 0
getfield com/bumptech/glide/request/target/ViewTarget/view Landroid/view/View;
invokevirtual android/view/View/getTag()Ljava/lang/Object;
areturn
L0:
aload 0
getfield com/bumptech/glide/request/target/ViewTarget/view Landroid/view/View;
getstatic com/bumptech/glide/request/target/ViewTarget/tagId Ljava/lang/Integer;
invokevirtual java/lang/Integer/intValue()I
invokevirtual android/view/View/getTag(I)Ljava/lang/Object;
areturn
.limit locals 1
.limit stack 2
.end method

.method private setTag(Ljava/lang/Object;)V
getstatic com/bumptech/glide/request/target/ViewTarget/tagId Ljava/lang/Integer;
ifnonnull L0
iconst_1
putstatic com/bumptech/glide/request/target/ViewTarget/isTagUsedAtLeastOnce Z
aload 0
getfield com/bumptech/glide/request/target/ViewTarget/view Landroid/view/View;
aload 1
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
return
L0:
aload 0
getfield com/bumptech/glide/request/target/ViewTarget/view Landroid/view/View;
getstatic com/bumptech/glide/request/target/ViewTarget/tagId Ljava/lang/Integer;
invokevirtual java/lang/Integer/intValue()I
aload 1
invokevirtual android/view/View/setTag(ILjava/lang/Object;)V
return
.limit locals 2
.limit stack 3
.end method

.method public static setTagId(I)V
getstatic com/bumptech/glide/request/target/ViewTarget/tagId Ljava/lang/Integer;
ifnonnull L0
getstatic com/bumptech/glide/request/target/ViewTarget/isTagUsedAtLeastOnce Z
ifeq L1
L0:
new java/lang/IllegalArgumentException
dup
ldc "You cannot set the tag id more than once or change the tag id after the first request has been made"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L1:
iload 0
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
putstatic com/bumptech/glide/request/target/ViewTarget/tagId Ljava/lang/Integer;
return
.limit locals 1
.limit stack 3
.end method

.method public getRequest()Lcom/bumptech/glide/request/Request;
aload 0
invokespecial com/bumptech/glide/request/target/ViewTarget/getTag()Ljava/lang/Object;
astore 2
aconst_null
astore 1
aload 2
ifnull L0
aload 2
instanceof com/bumptech/glide/request/Request
ifeq L1
aload 2
checkcast com/bumptech/glide/request/Request
astore 1
L0:
aload 1
areturn
L1:
new java/lang/IllegalArgumentException
dup
ldc "You must not call setTag() on a view Glide is targeting"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
.limit locals 3
.limit stack 3
.end method

.method public getSize(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
aload 0
getfield com/bumptech/glide/request/target/ViewTarget/sizeDeterminer Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;
aload 1
invokevirtual com/bumptech/glide/request/target/ViewTarget$SizeDeterminer/getSize(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
return
.limit locals 2
.limit stack 2
.end method

.method public getView()Landroid/view/View;
.signature "()TT;"
aload 0
getfield com/bumptech/glide/request/target/ViewTarget/view Landroid/view/View;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setRequest(Lcom/bumptech/glide/request/Request;)V
aload 0
aload 1
invokespecial com/bumptech/glide/request/target/ViewTarget/setTag(Ljava/lang/Object;)V
return
.limit locals 2
.limit stack 2
.end method

.method public toString()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Target for: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/bumptech/glide/request/target/ViewTarget/view Landroid/view/View;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method
