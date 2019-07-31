.bytecode 50.0
.class synchronized android/support/v4/view/PagerTitleStripIcs$SingleLineAllCapsTransform
.super android/text/method/SingleLineTransformationMethod
.inner class private static SingleLineAllCapsTransform inner android/support/v4/view/PagerTitleStripIcs$SingleLineAllCapsTransform outer android/support/v4/view/PagerTitleStripIcs

.field private static final 'TAG' Ljava/lang/String; = "SingleLineAllCapsTransform"

.field private 'mLocale' Ljava/util/Locale;

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial android/text/method/SingleLineTransformationMethod/<init>()V
aload 0
aload 1
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
invokevirtual android/content/res/Resources/getConfiguration()Landroid/content/res/Configuration;
getfield android/content/res/Configuration/locale Ljava/util/Locale;
putfield android/support/v4/view/PagerTitleStripIcs$SingleLineAllCapsTransform/mLocale Ljava/util/Locale;
return
.limit locals 2
.limit stack 2
.end method

.method public getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
aload 0
aload 1
aload 2
invokespecial android/text/method/SingleLineTransformationMethod/getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
astore 1
aload 1
ifnull L0
aload 1
invokevirtual java/lang/Object/toString()Ljava/lang/String;
aload 0
getfield android/support/v4/view/PagerTitleStripIcs$SingleLineAllCapsTransform/mLocale Ljava/util/Locale;
invokevirtual java/lang/String/toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
areturn
L0:
aconst_null
areturn
.limit locals 3
.limit stack 3
.end method
