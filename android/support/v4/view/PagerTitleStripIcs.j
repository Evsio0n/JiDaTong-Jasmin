.bytecode 50.0
.class synchronized android/support/v4/view/PagerTitleStripIcs
.super java/lang/Object
.inner class private static SingleLineAllCapsTransform inner android/support/v4/view/PagerTitleStripIcs$SingleLineAllCapsTransform outer android/support/v4/view/PagerTitleStripIcs

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static setSingleLineAllCaps(Landroid/widget/TextView;)V
aload 0
new android/support/v4/view/PagerTitleStripIcs$SingleLineAllCapsTransform
dup
aload 0
invokevirtual android/widget/TextView/getContext()Landroid/content/Context;
invokespecial android/support/v4/view/PagerTitleStripIcs$SingleLineAllCapsTransform/<init>(Landroid/content/Context;)V
invokevirtual android/widget/TextView/setTransformationMethod(Landroid/text/method/TransformationMethod;)V
return
.limit locals 1
.limit stack 4
.end method
