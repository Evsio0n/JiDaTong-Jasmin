.bytecode 50.0
.class public synchronized com/product/android/utils/wbAtUtils/WbAtView
.super java/lang/Object

.field private 'mEditText' Landroid/widget/EditText;

.field private 'mPasteListener' Lcom/product/android/utils/MyPasteListener;

.field private 'mWbAtTextWatcher' Lcom/product/android/utils/wbAtUtils/WbAtTextWatcher;

.method public <init>(Landroid/content/Context;Landroid/widget/EditText;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 2
putfield com/product/android/utils/wbAtUtils/WbAtView/mEditText Landroid/widget/EditText;
aload 0
new com/product/android/utils/wbAtUtils/WbAtTextWatcher
dup
aload 1
aload 0
getfield com/product/android/utils/wbAtUtils/WbAtView/mEditText Landroid/widget/EditText;
invokespecial com/product/android/utils/wbAtUtils/WbAtTextWatcher/<init>(Landroid/content/Context;Landroid/widget/EditText;)V
putfield com/product/android/utils/wbAtUtils/WbAtView/mWbAtTextWatcher Lcom/product/android/utils/wbAtUtils/WbAtTextWatcher;
aload 0
new com/product/android/utils/MyPasteListener
dup
aload 1
invokespecial com/product/android/utils/MyPasteListener/<init>(Landroid/content/Context;)V
putfield com/product/android/utils/wbAtUtils/WbAtView/mPasteListener Lcom/product/android/utils/MyPasteListener;
aload 0
getfield com/product/android/utils/wbAtUtils/WbAtView/mPasteListener Lcom/product/android/utils/MyPasteListener;
iconst_1
invokevirtual com/product/android/utils/MyPasteListener/setType(I)V
aload 0
getfield com/product/android/utils/wbAtUtils/WbAtView/mWbAtTextWatcher Lcom/product/android/utils/wbAtUtils/WbAtTextWatcher;
aload 0
getfield com/product/android/utils/wbAtUtils/WbAtView/mPasteListener Lcom/product/android/utils/MyPasteListener;
invokevirtual com/product/android/utils/wbAtUtils/WbAtTextWatcher/setPasteListener(Lcom/product/android/utils/MyPasteListener;)V
aload 0
getfield com/product/android/utils/wbAtUtils/WbAtView/mEditText Landroid/widget/EditText;
aload 0
getfield com/product/android/utils/wbAtUtils/WbAtView/mWbAtTextWatcher Lcom/product/android/utils/wbAtUtils/WbAtTextWatcher;
invokevirtual android/widget/EditText/addTextChangedListener(Landroid/text/TextWatcher;)V
aload 0
getfield com/product/android/utils/wbAtUtils/WbAtView/mEditText Landroid/widget/EditText;
invokevirtual android/widget/EditText/getFilters()[Landroid/text/InputFilter;
astore 1
aload 1
ifnull L0
aload 1
arraylength
ifle L0
aload 1
arraylength
iconst_1
iadd
anewarray android/text/InputFilter
astore 2
aload 2
iconst_0
aload 0
getfield com/product/android/utils/wbAtUtils/WbAtView/mPasteListener Lcom/product/android/utils/MyPasteListener;
aastore
aload 1
iconst_0
aload 2
iconst_1
aload 1
arraylength
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 0
getfield com/product/android/utils/wbAtUtils/WbAtView/mEditText Landroid/widget/EditText;
aload 2
invokevirtual android/widget/EditText/setFilters([Landroid/text/InputFilter;)V
L0:
return
.limit locals 3
.limit stack 5
.end method

.method private static drawMTagBitmapDrawable(ILjava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
.annotation visible Ljava/lang/Deprecated;
.end annotation
new android/graphics/Paint
dup
invokespecial android/graphics/Paint/<init>()V
astore 3
aload 3
iconst_1
invokevirtual android/graphics/Paint/setAntiAlias(Z)V
aload 3
iconst_1
invokevirtual android/graphics/Paint/setFilterBitmap(Z)V
aload 3
iload 0
i2f
invokevirtual android/graphics/Paint/setTextSize(F)V
new android/graphics/Rect
dup
invokespecial android/graphics/Rect/<init>()V
astore 4
aload 3
aload 1
iconst_0
aload 1
invokevirtual java/lang/String/length()I
aload 4
invokevirtual android/graphics/Paint/getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V
aload 4
invokevirtual android/graphics/Rect/width()I
iconst_4
iadd
aload 4
invokevirtual android/graphics/Rect/height()I
iconst_4
iadd
getstatic android/graphics/Bitmap$Config/ARGB_8888 Landroid/graphics/Bitmap$Config;
invokestatic android/graphics/Bitmap/createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
astore 2
new android/graphics/Canvas
dup
aload 2
invokespecial android/graphics/Canvas/<init>(Landroid/graphics/Bitmap;)V
astore 5
aload 5
aload 1
fconst_0
aload 4
invokevirtual android/graphics/Rect/height()I
iconst_4
isub
i2f
aload 3
invokevirtual android/graphics/Canvas/drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
aload 5
bipush 31
invokevirtual android/graphics/Canvas/save(I)I
pop
aload 5
invokevirtual android/graphics/Canvas/restore()V
new android/graphics/drawable/BitmapDrawable
dup
aload 2
invokespecial android/graphics/drawable/BitmapDrawable/<init>(Landroid/graphics/Bitmap;)V
astore 1
aload 1
iconst_0
iconst_0
aload 2
invokevirtual android/graphics/Bitmap/getWidth()I
aload 2
invokevirtual android/graphics/Bitmap/getHeight()I
invokevirtual android/graphics/drawable/BitmapDrawable/setBounds(IIII)V
aload 1
areturn
.limit locals 6
.limit stack 5
.end method

.method private static drawMTagBitmapDrawable(Landroid/content/Context;IILjava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
new android/widget/TextView
dup
aload 0
invokespecial android/widget/TextView/<init>(Landroid/content/Context;)V
astore 4
aload 4
iconst_0
iload 1
i2f
invokevirtual android/widget/TextView/setTextSize(IF)V
aload 4
iload 2
invokevirtual android/widget/TextView/setTextColor(I)V
aload 4
aload 3
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
aload 4
invokestatic com/product/android/utils/ContentUtils/getImageSpanDrawble(Landroid/content/Context;Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;
checkcast android/graphics/drawable/BitmapDrawable
areturn
.limit locals 5
.limit stack 3
.end method

.method private static drawMTagBitmapDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
aload 0
iload 1
aload 0
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
ldc_w 17170435
invokevirtual android/content/res/Resources/getColor(I)I
aload 2
invokestatic com/product/android/utils/wbAtUtils/WbAtView/drawMTagBitmapDrawable(Landroid/content/Context;IILjava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
areturn
.limit locals 3
.limit stack 4
.end method

.method public static getAtString(Ljava/lang/String;)Ljava/lang/String;
.catch java/lang/StringIndexOutOfBoundsException from L0 to L1 using L2
aload 0
ldc "@"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
istore 1
aload 0
getstatic com/product/android/utils/WbRegexUtils/M_TAG_STRING_END Ljava/lang/String;
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
istore 2
L0:
aload 0
iload 1
iload 2
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 0
L1:
aload 0
areturn
L2:
astore 0
ldc "WbAtView"
ldc "getAtString index out of bounds"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
invokevirtual java/lang/StringIndexOutOfBoundsException/printStackTrace()V
ldc ""
areturn
.limit locals 3
.limit stack 3
.end method

.method public static getMTagString(Ljava/lang/String;J)Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 3
aload 3
ldc "<M %d>@"
iconst_1
anewarray java/lang/Object
dup
iconst_0
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/utils/WbRegexUtils/M_TAG_STRING_END Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 3
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 4
.limit stack 7
.end method

.method public static getOnlyAtContent(Ljava/lang/String;)Ljava/lang/String;
aload 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
ldc ""
areturn
L0:
getstatic com/product/android/utils/WbRegexUtils/AT_M_TAG_PATTERN Ljava/util/regex/Pattern;
aload 0
invokevirtual java/util/regex/Pattern/matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
astore 4
iconst_0
istore 1
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 5
L1:
aload 4
invokevirtual java/util/regex/Matcher/find()Z
ifeq L2
aload 4
invokevirtual java/util/regex/Matcher/start()I
istore 3
aload 4
invokevirtual java/util/regex/Matcher/end()I
istore 2
iload 3
iload 1
if_icmpeq L3
aload 5
aload 0
iload 1
iload 3
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L3:
aload 5
aload 4
invokevirtual java/util/regex/Matcher/group()Ljava/lang/String;
invokestatic com/product/android/utils/wbAtUtils/WbAtView/getAtString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
iload 2
istore 1
goto L1
L2:
iload 1
ifne L4
aload 5
aload 0
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L5:
aload 5
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
areturn
L4:
iload 1
aload 0
invokevirtual java/lang/String/length()I
if_icmpeq L5
aload 5
aload 0
iload 1
aload 0
invokevirtual java/lang/String/length()I
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
goto L5
.limit locals 6
.limit stack 4
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
f2i
istore 3
aload 1
invokestatic com/product/android/utils/wbAtUtils/WbAtView/getOnlyAtContent(Ljava/lang/String;)Ljava/lang/String;
astore 0
aload 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
new android/text/SpannableString
dup
aload 1
invokespecial android/text/SpannableString/<init>(Ljava/lang/CharSequence;)V
astore 4
aload 4
new com/product/android/utils/wbAtUtils/AtImageSpan
dup
iload 3
aload 0
invokestatic com/product/android/utils/wbAtUtils/WbAtView/drawMTagBitmapDrawable(ILjava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
aload 1
iconst_0
invokespecial com/product/android/utils/wbAtUtils/AtImageSpan/<init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V
iconst_0
aload 4
invokevirtual android/text/SpannableString/length()I
bipush 33
invokevirtual android/text/SpannableString/setSpan(Ljava/lang/Object;III)V
aload 2
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
aload 2
invokevirtual android/widget/EditText/getSelectionStart()I
aload 4
invokeinterface android/text/Editable/insert(ILjava/lang/CharSequence;)Landroid/text/Editable; 2
pop
aload 2
invokevirtual android/widget/EditText/requestFocus()Z
pop
return
.limit locals 5
.limit stack 6
.end method

.method public static setSpanAtName(Landroid/content/Context;Landroid/text/Editable;I)V
getstatic com/product/android/utils/WbRegexUtils/AT_M_TAG_PATTERN Ljava/util/regex/Pattern;
aload 1
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/util/regex/Pattern/matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
astore 3
L0:
aload 3
invokevirtual java/util/regex/Matcher/find()Z
ifeq L1
aload 3
invokevirtual java/util/regex/Matcher/group()Ljava/lang/String;
astore 4
aload 1
new com/product/android/utils/wbAtUtils/AtImageSpan
dup
aload 0
iload 2
aload 4
invokestatic com/product/android/utils/wbAtUtils/WbAtView/getAtString(Ljava/lang/String;)Ljava/lang/String;
invokestatic com/product/android/utils/wbAtUtils/WbAtView/drawMTagBitmapDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
aload 4
iconst_0
invokespecial com/product/android/utils/wbAtUtils/AtImageSpan/<init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V
aload 3
invokevirtual java/util/regex/Matcher/start()I
aload 3
invokevirtual java/util/regex/Matcher/end()I
bipush 33
invokeinterface android/text/Editable/setSpan(Ljava/lang/Object;III)V 4
goto L0
L1:
return
.limit locals 5
.limit stack 6
.end method

.method public onDestroy()V
aload 0
getfield com/product/android/utils/wbAtUtils/WbAtView/mEditText Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
L1:
return
L0:
aload 0
getfield com/product/android/utils/wbAtUtils/WbAtView/mEditText Landroid/widget/EditText;
invokevirtual android/widget/EditText/getEditableText()Landroid/text/Editable;
iconst_0
aload 0
getfield com/product/android/utils/wbAtUtils/WbAtView/mEditText Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokeinterface android/text/Editable/length()I 0
ldc com/product/android/utils/wbAtUtils/AtImageSpan
invokeinterface android/text/Editable/getSpans(IILjava/lang/Class;)[Ljava/lang/Object; 3
checkcast [Lcom/product/android/utils/wbAtUtils/AtImageSpan;
astore 3
aload 3
ifnull L1
aload 3
arraylength
ifeq L1
aload 3
arraylength
istore 2
iconst_0
istore 1
L2:
iload 1
iload 2
if_icmpge L1
aload 3
iload 1
aaload
astore 4
aload 4
invokevirtual com/product/android/utils/wbAtUtils/AtImageSpan/getDrawable()Landroid/graphics/drawable/Drawable;
instanceof android/graphics/drawable/BitmapDrawable
ifeq L3
aload 4
invokevirtual com/product/android/utils/wbAtUtils/AtImageSpan/getDrawable()Landroid/graphics/drawable/Drawable;
checkcast android/graphics/drawable/BitmapDrawable
invokevirtual android/graphics/drawable/BitmapDrawable/getBitmap()Landroid/graphics/Bitmap;
astore 4
aload 4
ifnull L3
aload 4
invokevirtual android/graphics/Bitmap/isRecycled()Z
ifne L3
aload 4
invokevirtual android/graphics/Bitmap/recycle()V
L3:
iload 1
iconst_1
iadd
istore 1
goto L2
.limit locals 5
.limit stack 4
.end method
