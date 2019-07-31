.bytecode 50.0
.class synchronized com/bumptech/glide/request/target/ViewTarget$SizeDeterminer$SizeDeterminerLayoutListener
.super java/lang/Object
.implements android/view/ViewTreeObserver$OnPreDrawListener
.inner class private static SizeDeterminer inner com/bumptech/glide/request/target/ViewTarget$SizeDeterminer outer com/bumptech/glide/request/target/ViewTarget
.inner class private static SizeDeterminerLayoutListener inner com/bumptech/glide/request/target/ViewTarget$SizeDeterminer$SizeDeterminerLayoutListener outer com/bumptech/glide/request/target/ViewTarget$SizeDeterminer

.field private final 'sizeDeterminerRef' Ljava/lang/ref/WeakReference; signature "Ljava/lang/ref/WeakReference<Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;>;"

.method public <init>(Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/lang/ref/WeakReference
dup
aload 1
invokespecial java/lang/ref/WeakReference/<init>(Ljava/lang/Object;)V
putfield com/bumptech/glide/request/target/ViewTarget$SizeDeterminer$SizeDeterminerLayoutListener/sizeDeterminerRef Ljava/lang/ref/WeakReference;
return
.limit locals 2
.limit stack 4
.end method

.method public onPreDraw()Z
ldc "ViewTarget"
iconst_2
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L0
ldc "ViewTarget"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "OnGlobalLayoutListener called listener="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L0:
aload 0
getfield com/bumptech/glide/request/target/ViewTarget$SizeDeterminer$SizeDeterminerLayoutListener/sizeDeterminerRef Ljava/lang/ref/WeakReference;
invokevirtual java/lang/ref/WeakReference/get()Ljava/lang/Object;
checkcast com/bumptech/glide/request/target/ViewTarget$SizeDeterminer
astore 1
aload 1
ifnull L1
aload 1
invokestatic com/bumptech/glide/request/target/ViewTarget$SizeDeterminer/access$000(Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;)V
L1:
iconst_1
ireturn
.limit locals 2
.limit stack 3
.end method
