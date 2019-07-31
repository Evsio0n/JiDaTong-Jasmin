.bytecode 50.0
.class synchronized com/bumptech/glide/request/target/SquaringDrawable$State
.super android/graphics/drawable/Drawable$ConstantState
.inner class static State inner com/bumptech/glide/request/target/SquaringDrawable$State outer com/bumptech/glide/request/target/SquaringDrawable

.field private final 'side' I

.field private final 'wrapped' Landroid/graphics/drawable/Drawable$ConstantState;

.method <init>(Landroid/graphics/drawable/Drawable$ConstantState;I)V
aload 0
invokespecial android/graphics/drawable/Drawable$ConstantState/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/request/target/SquaringDrawable$State/wrapped Landroid/graphics/drawable/Drawable$ConstantState;
aload 0
iload 2
putfield com/bumptech/glide/request/target/SquaringDrawable$State/side I
return
.limit locals 3
.limit stack 2
.end method

.method <init>(Lcom/bumptech/glide/request/target/SquaringDrawable$State;)V
aload 0
aload 1
getfield com/bumptech/glide/request/target/SquaringDrawable$State/wrapped Landroid/graphics/drawable/Drawable$ConstantState;
aload 1
getfield com/bumptech/glide/request/target/SquaringDrawable$State/side I
invokespecial com/bumptech/glide/request/target/SquaringDrawable$State/<init>(Landroid/graphics/drawable/Drawable$ConstantState;I)V
return
.limit locals 2
.limit stack 3
.end method

.method static synthetic access$000(Lcom/bumptech/glide/request/target/SquaringDrawable$State;)Landroid/graphics/drawable/Drawable$ConstantState;
aload 0
getfield com/bumptech/glide/request/target/SquaringDrawable$State/wrapped Landroid/graphics/drawable/Drawable$ConstantState;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/bumptech/glide/request/target/SquaringDrawable$State;)I
aload 0
getfield com/bumptech/glide/request/target/SquaringDrawable$State/side I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getChangingConfigurations()I
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
aload 0
aconst_null
invokevirtual com/bumptech/glide/request/target/SquaringDrawable$State/newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
areturn
.limit locals 1
.limit stack 2
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
new com/bumptech/glide/request/target/SquaringDrawable
dup
aload 0
aconst_null
aload 1
invokespecial com/bumptech/glide/request/target/SquaringDrawable/<init>(Lcom/bumptech/glide/request/target/SquaringDrawable$State;Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;Landroid/content/res/Resources;)V
areturn
.limit locals 2
.limit stack 5
.end method
