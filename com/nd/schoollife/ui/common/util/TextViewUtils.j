.bytecode 50.0
.class public final synchronized com/nd/schoollife/ui/common/util/TextViewUtils
.super java/lang/Object

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static colorText(Ljava/lang/String;Ljava/lang/String;ILandroid/text/SpannableString;)Landroid/text/SpannableString;
aload 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
L1:
aload 3
areturn
L0:
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 1
invokestatic java/util/Locale/getDefault()Ljava/util/Locale;
invokevirtual java/lang/String/toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
astore 1
aload 0
invokestatic java/util/Locale/getDefault()Ljava/util/Locale;
invokevirtual java/lang/String/toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
astore 0
aload 0
aload 1
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L1
aload 0
aload 1
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
istore 4
aload 3
new android/text/style/ForegroundColorSpan
dup
iload 2
invokespecial android/text/style/ForegroundColorSpan/<init>(I)V
iload 4
aload 1
invokevirtual java/lang/String/length()I
iload 4
iadd
bipush 33
invokevirtual android/text/SpannableString/setSpan(Ljava/lang/Object;III)V
aload 3
areturn
.limit locals 5
.limit stack 5
.end method

.method public static colorText(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;
aload 0
astore 4
aload 0
ifnonnull L0
ldc ""
astore 4
L0:
new android/text/SpannableStringBuilder
dup
aload 4
invokespecial android/text/SpannableStringBuilder/<init>(Ljava/lang/CharSequence;)V
astore 0
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 1
invokestatic java/util/Locale/getDefault()Ljava/util/Locale;
invokevirtual java/lang/String/toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
astore 1
aload 4
invokestatic java/util/Locale/getDefault()Ljava/util/Locale;
invokevirtual java/lang/String/toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
astore 4
aload 4
aload 1
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L1
aload 4
aload 1
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
istore 3
aload 0
new android/text/style/ForegroundColorSpan
dup
iload 2
invokespecial android/text/style/ForegroundColorSpan/<init>(I)V
iload 3
aload 1
invokevirtual java/lang/String/length()I
iload 3
iadd
bipush 33
invokevirtual android/text/SpannableStringBuilder/setSpan(Ljava/lang/Object;III)V
L1:
aload 0
areturn
.limit locals 5
.limit stack 5
.end method

.method public static drawMTagBitmapDrawable(Landroid/content/Context;FLjava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
aconst_null
areturn
L0:
aload 2
iconst_0
bipush 11
invokestatic com/nd/schoollife/ui/common/util/PostUtils/getWordLength(Ljava/lang/String;ZI)[F
astore 4
aload 2
astore 3
aload 4
iconst_0
faload
ldc_w 11.0F
fcmpl
ifle L1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 2
iconst_0
aload 4
iconst_1
faload
f2i
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "..."
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
L1:
aload 0
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
astore 2
new android/graphics/Paint
dup
invokespecial android/graphics/Paint/<init>()V
astore 4
aload 4
iconst_1
invokevirtual android/graphics/Paint/setAntiAlias(Z)V
aload 4
iconst_1
invokevirtual android/graphics/Paint/setFilterBitmap(Z)V
aload 4
fload 1
invokevirtual android/graphics/Paint/setTextSize(F)V
aload 4
aload 2
getstatic com/nd/schoollife/R$color/cor_square_message_item_from_tv I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/graphics/Paint/setColor(I)V
new android/graphics/Rect
dup
invokespecial android/graphics/Rect/<init>()V
astore 5
aload 4
aload 3
iconst_0
aload 3
invokevirtual java/lang/String/length()I
aload 5
invokevirtual android/graphics/Paint/getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V
aload 5
invokevirtual android/graphics/Rect/width()I
iconst_4
iadd
aload 5
invokevirtual android/graphics/Rect/height()I
iconst_4
iadd
getstatic android/graphics/Bitmap$Config/ARGB_8888 Landroid/graphics/Bitmap$Config;
invokestatic android/graphics/Bitmap/createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
astore 0
new android/graphics/Canvas
dup
aload 0
invokespecial android/graphics/Canvas/<init>(Landroid/graphics/Bitmap;)V
astore 6
aload 6
aload 3
fconst_0
aload 5
invokevirtual android/graphics/Rect/height()I
iconst_4
isub
i2f
aload 4
invokevirtual android/graphics/Canvas/drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
aload 6
bipush 31
invokevirtual android/graphics/Canvas/save(I)I
pop
aload 6
invokevirtual android/graphics/Canvas/restore()V
new android/graphics/drawable/BitmapDrawable
dup
aload 2
aload 0
invokespecial android/graphics/drawable/BitmapDrawable/<init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
astore 2
aload 2
iconst_0
iconst_0
aload 0
invokevirtual android/graphics/Bitmap/getWidth()I
aload 0
invokevirtual android/graphics/Bitmap/getHeight()I
invokevirtual android/graphics/drawable/BitmapDrawable/setBounds(IIII)V
aload 2
areturn
.limit locals 7
.limit stack 5
.end method

.method public static extractString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
aload 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
ldc ""
areturn
L0:
aload 0
aload 1
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L1
aload 1
iconst_1
iload 2
invokestatic com/nd/schoollife/ui/common/util/PostUtils/getWordLength(Ljava/lang/String;ZI)[F
iconst_0
faload
f2i
istore 3
aload 0
aload 1
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
istore 4
aload 0
iconst_0
iload 4
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 9
aload 0
aload 1
invokevirtual java/lang/String/length()I
iload 4
iadd
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
astore 10
iload 2
iload 3
isub
istore 7
ldc ""
astore 0
ldc ""
astore 8
iload 7
ifgt L2
aload 1
aload 1
iconst_1
iload 2
invokestatic com/nd/schoollife/ui/common/util/PostUtils/getWordLength(Ljava/lang/String;ZI)[F
iconst_1
faload
f2i
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
areturn
L2:
iload 7
iconst_2
idiv
istore 6
iload 7
iload 6
isub
istore 3
aload 9
iconst_1
iconst_0
invokestatic com/nd/schoollife/ui/common/util/PostUtils/getWordLength(Ljava/lang/String;ZI)[F
iconst_0
faload
f2i
istore 4
aload 10
iconst_1
iconst_0
invokestatic com/nd/schoollife/ui/common/util/PostUtils/getWordLength(Ljava/lang/String;ZI)[F
iconst_0
faload
f2i
istore 5
iload 4
iload 3
if_icmple L3
iload 6
istore 2
iload 5
iload 6
if_icmpge L4
iload 5
istore 2
iload 7
iload 2
isub
istore 3
L4:
iload 3
iload 4
if_icmpge L5
ldc "..."
astore 0
L5:
iload 2
iload 5
if_icmpge L6
ldc "..."
astore 8
L6:
iload 4
iload 3
if_icmple L7
aload 9
iconst_1
iload 4
iload 3
isub
invokestatic com/nd/schoollife/ui/common/util/PostUtils/getWordLength(Ljava/lang/String;ZI)[F
iconst_1
faload
f2i
istore 3
L8:
aload 10
iconst_1
iload 2
invokestatic com/nd/schoollife/ui/common/util/PostUtils/getWordLength(Ljava/lang/String;ZI)[F
iconst_1
faload
f2i
istore 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 9
iload 3
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 10
iconst_0
iload 2
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 8
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 8
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 8
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L3:
iload 4
istore 3
iload 7
iload 3
isub
istore 2
goto L4
L7:
iconst_0
istore 3
goto L8
L1:
aload 0
iconst_0
aload 0
iconst_1
iload 2
iconst_2
iadd
invokestatic com/nd/schoollife/ui/common/util/PostUtils/getWordLength(Ljava/lang/String;ZI)[F
iconst_1
faload
f2i
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
areturn
.limit locals 11
.limit stack 6
.end method

.method public static getMaxTextCount(Landroid/content/Context;IFI)I
aload 0
invokestatic com/nd/schoollife/common/utils/ui/DisplayUtil/getScreenWidth(Landroid/content/Context;)I
aload 0
iload 1
i2f
invokestatic com/nd/schoollife/common/utils/ui/DisplayUtil/dip2px(Landroid/content/Context;F)I
isub
i2f
fload 2
fdiv
iload 3
i2f
fmul
f2i
ireturn
.limit locals 4
.limit stack 3
.end method

.method public static insertAtName(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)V
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
L1:
return
L0:
aload 2
invokevirtual android/widget/EditText/getTextSize()F
fstore 3
aload 1
invokestatic com/product/android/utils/wbAtUtils/WbAtView/getOnlyAtContent(Ljava/lang/String;)Ljava/lang/String;
astore 4
aload 4
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
new android/text/SpannableString
dup
aload 1
invokespecial android/text/SpannableString/<init>(Ljava/lang/CharSequence;)V
astore 5
aload 5
new com/product/android/utils/wbAtUtils/AtImageSpan
dup
aload 0
fload 3
aload 4
invokestatic com/nd/schoollife/ui/common/util/TextViewUtils/drawMTagBitmapDrawable(Landroid/content/Context;FLjava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
aload 1
iconst_0
invokespecial com/product/android/utils/wbAtUtils/AtImageSpan/<init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V
iconst_0
aload 5
invokevirtual android/text/SpannableString/length()I
bipush 33
invokevirtual android/text/SpannableString/setSpan(Ljava/lang/Object;III)V
aload 2
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
aload 2
invokevirtual android/widget/EditText/getSelectionStart()I
aload 5
invokeinterface android/text/Editable/insert(ILjava/lang/CharSequence;)Landroid/text/Editable; 2
pop
aload 2
invokevirtual android/widget/EditText/requestFocus()Z
pop
return
.limit locals 6
.limit stack 6
.end method

.method public static resolveSearchPostContent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
ldc ""
areturn
L0:
aload 1
invokestatic com/product/android/utils/wbAtUtils/WbAtView/getOnlyAtContent(Ljava/lang/String;)Ljava/lang/String;
astore 4
aload 4
aload 2
iload 3
invokestatic com/common/android/utils/smiley/Smileyhelper/getInstance()Lcom/common/android/utils/smiley/Smileyhelper;
aload 4
iconst_1
bipush 18
invokevirtual com/common/android/utils/smiley/Smileyhelper/getSmileySpannableString(Ljava/lang/String;II)Landroid/text/SpannableString;
invokestatic com/nd/schoollife/ui/common/util/TextViewUtils/colorText(Ljava/lang/String;Ljava/lang/String;ILandroid/text/SpannableString;)Landroid/text/SpannableString;
astore 2
aload 2
invokevirtual android/text/SpannableString/toString()Ljava/lang/String;
aload 1
aload 2
invokestatic com/product/android/utils/ContentUtils/resolveAt(Ljava/lang/String;Ljava/lang/String;Landroid/text/SpannableString;)Landroid/text/SpannableString;
astore 1
aload 0
aload 1
invokevirtual android/text/SpannableString/toString()Ljava/lang/String;
aload 1
invokestatic com/product/android/utils/ContentUtils/resolveUrl(Landroid/content/Context;Ljava/lang/String;Landroid/text/SpannableString;)Landroid/text/SpannableString;
areturn
.limit locals 5
.limit stack 7
.end method
