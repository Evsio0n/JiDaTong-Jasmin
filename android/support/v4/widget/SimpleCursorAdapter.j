.bytecode 50.0
.class public synchronized android/support/v4/widget/SimpleCursorAdapter
.super android/support/v4/widget/ResourceCursorAdapter
.inner class public static abstract interface CursorToStringConverter inner android/support/v4/widget/SimpleCursorAdapter$CursorToStringConverter outer android/support/v4/widget/SimpleCursorAdapter
.inner class public static abstract interface ViewBinder inner android/support/v4/widget/SimpleCursorAdapter$ViewBinder outer android/support/v4/widget/SimpleCursorAdapter

.field private 'mCursorToStringConverter' Landroid/support/v4/widget/SimpleCursorAdapter$CursorToStringConverter;

.field protected 'mFrom' [I

.field 'mOriginalFrom' [Ljava/lang/String;

.field private 'mStringConversionColumn' I

.field protected 'mTo' [I

.field private 'mViewBinder' Landroid/support/v4/widget/SimpleCursorAdapter$ViewBinder;

.method public <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
.annotation visible Ljava/lang/Deprecated;
.end annotation
aload 0
aload 1
iload 2
aload 3
invokespecial android/support/v4/widget/ResourceCursorAdapter/<init>(Landroid/content/Context;ILandroid/database/Cursor;)V
aload 0
iconst_m1
putfield android/support/v4/widget/SimpleCursorAdapter/mStringConversionColumn I
aload 0
aload 5
putfield android/support/v4/widget/SimpleCursorAdapter/mTo [I
aload 0
aload 4
putfield android/support/v4/widget/SimpleCursorAdapter/mOriginalFrom [Ljava/lang/String;
aload 0
aload 4
invokespecial android/support/v4/widget/SimpleCursorAdapter/findColumns([Ljava/lang/String;)V
return
.limit locals 6
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V
aload 0
aload 1
iload 2
aload 3
iload 6
invokespecial android/support/v4/widget/ResourceCursorAdapter/<init>(Landroid/content/Context;ILandroid/database/Cursor;I)V
aload 0
iconst_m1
putfield android/support/v4/widget/SimpleCursorAdapter/mStringConversionColumn I
aload 0
aload 5
putfield android/support/v4/widget/SimpleCursorAdapter/mTo [I
aload 0
aload 4
putfield android/support/v4/widget/SimpleCursorAdapter/mOriginalFrom [Ljava/lang/String;
aload 0
aload 4
invokespecial android/support/v4/widget/SimpleCursorAdapter/findColumns([Ljava/lang/String;)V
return
.limit locals 7
.limit stack 5
.end method

.method private findColumns([Ljava/lang/String;)V
aload 0
getfield android/support/v4/widget/SimpleCursorAdapter/mCursor Landroid/database/Cursor;
ifnull L0
aload 1
arraylength
istore 3
aload 0
getfield android/support/v4/widget/SimpleCursorAdapter/mFrom [I
ifnull L1
aload 0
getfield android/support/v4/widget/SimpleCursorAdapter/mFrom [I
arraylength
iload 3
if_icmpeq L2
L1:
aload 0
iload 3
newarray int
putfield android/support/v4/widget/SimpleCursorAdapter/mFrom [I
L2:
iconst_0
istore 2
L3:
iload 2
iload 3
if_icmpge L4
aload 0
getfield android/support/v4/widget/SimpleCursorAdapter/mFrom [I
iload 2
aload 0
getfield android/support/v4/widget/SimpleCursorAdapter/mCursor Landroid/database/Cursor;
aload 1
iload 2
aaload
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
iastore
iload 2
iconst_1
iadd
istore 2
goto L3
L0:
aload 0
aconst_null
putfield android/support/v4/widget/SimpleCursorAdapter/mFrom [I
L4:
return
.limit locals 4
.limit stack 5
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
aload 0
getfield android/support/v4/widget/SimpleCursorAdapter/mViewBinder Landroid/support/v4/widget/SimpleCursorAdapter$ViewBinder;
astore 8
aload 0
getfield android/support/v4/widget/SimpleCursorAdapter/mTo [I
arraylength
istore 5
aload 0
getfield android/support/v4/widget/SimpleCursorAdapter/mFrom [I
astore 9
aload 0
getfield android/support/v4/widget/SimpleCursorAdapter/mTo [I
astore 10
iconst_0
istore 4
L0:
iload 4
iload 5
if_icmpge L1
aload 1
aload 10
iload 4
iaload
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
astore 11
aload 11
ifnull L2
iconst_0
istore 6
aload 8
ifnull L3
aload 8
aload 11
aload 3
aload 9
iload 4
iaload
invokeinterface android/support/v4/widget/SimpleCursorAdapter$ViewBinder/setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z 3
istore 6
L3:
iload 6
ifne L2
aload 3
aload 9
iload 4
iaload
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
astore 7
aload 7
astore 2
aload 7
ifnonnull L4
ldc ""
astore 2
L4:
aload 11
instanceof android/widget/TextView
ifeq L5
aload 0
aload 11
checkcast android/widget/TextView
aload 2
invokevirtual android/support/v4/widget/SimpleCursorAdapter/setViewText(Landroid/widget/TextView;Ljava/lang/String;)V
L2:
iload 4
iconst_1
iadd
istore 4
goto L0
L5:
aload 11
instanceof android/widget/ImageView
ifeq L6
aload 0
aload 11
checkcast android/widget/ImageView
aload 2
invokevirtual android/support/v4/widget/SimpleCursorAdapter/setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V
goto L2
L6:
new java/lang/IllegalStateException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 11
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/Class/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " is not a "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " view that can be bounds by this SimpleCursorAdapter"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L1:
return
.limit locals 12
.limit stack 5
.end method

.method public changeCursorAndColumns(Landroid/database/Cursor;[Ljava/lang/String;[I)V
aload 0
aload 2
putfield android/support/v4/widget/SimpleCursorAdapter/mOriginalFrom [Ljava/lang/String;
aload 0
aload 3
putfield android/support/v4/widget/SimpleCursorAdapter/mTo [I
aload 0
aload 1
invokespecial android/support/v4/widget/ResourceCursorAdapter/changeCursor(Landroid/database/Cursor;)V
aload 0
aload 0
getfield android/support/v4/widget/SimpleCursorAdapter/mOriginalFrom [Ljava/lang/String;
invokespecial android/support/v4/widget/SimpleCursorAdapter/findColumns([Ljava/lang/String;)V
return
.limit locals 4
.limit stack 2
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
aload 0
getfield android/support/v4/widget/SimpleCursorAdapter/mCursorToStringConverter Landroid/support/v4/widget/SimpleCursorAdapter$CursorToStringConverter;
ifnull L0
aload 0
getfield android/support/v4/widget/SimpleCursorAdapter/mCursorToStringConverter Landroid/support/v4/widget/SimpleCursorAdapter$CursorToStringConverter;
aload 1
invokeinterface android/support/v4/widget/SimpleCursorAdapter$CursorToStringConverter/convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence; 1
areturn
L0:
aload 0
getfield android/support/v4/widget/SimpleCursorAdapter/mStringConversionColumn I
iconst_m1
if_icmple L1
aload 1
aload 0
getfield android/support/v4/widget/SimpleCursorAdapter/mStringConversionColumn I
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
areturn
L1:
aload 0
aload 1
invokespecial android/support/v4/widget/ResourceCursorAdapter/convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getCursorToStringConverter()Landroid/support/v4/widget/SimpleCursorAdapter$CursorToStringConverter;
aload 0
getfield android/support/v4/widget/SimpleCursorAdapter/mCursorToStringConverter Landroid/support/v4/widget/SimpleCursorAdapter$CursorToStringConverter;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getStringConversionColumn()I
aload 0
getfield android/support/v4/widget/SimpleCursorAdapter/mStringConversionColumn I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getViewBinder()Landroid/support/v4/widget/SimpleCursorAdapter$ViewBinder;
aload 0
getfield android/support/v4/widget/SimpleCursorAdapter/mViewBinder Landroid/support/v4/widget/SimpleCursorAdapter$ViewBinder;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setCursorToStringConverter(Landroid/support/v4/widget/SimpleCursorAdapter$CursorToStringConverter;)V
aload 0
aload 1
putfield android/support/v4/widget/SimpleCursorAdapter/mCursorToStringConverter Landroid/support/v4/widget/SimpleCursorAdapter$CursorToStringConverter;
return
.limit locals 2
.limit stack 2
.end method

.method public setStringConversionColumn(I)V
aload 0
iload 1
putfield android/support/v4/widget/SimpleCursorAdapter/mStringConversionColumn I
return
.limit locals 2
.limit stack 2
.end method

.method public setViewBinder(Landroid/support/v4/widget/SimpleCursorAdapter$ViewBinder;)V
aload 0
aload 1
putfield android/support/v4/widget/SimpleCursorAdapter/mViewBinder Landroid/support/v4/widget/SimpleCursorAdapter$ViewBinder;
return
.limit locals 2
.limit stack 2
.end method

.method public setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V
.catch java/lang/NumberFormatException from L0 to L1 using L2
L0:
aload 1
aload 2
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
invokevirtual android/widget/ImageView/setImageResource(I)V
L1:
return
L2:
astore 3
aload 1
aload 2
invokestatic android/net/Uri/parse(Ljava/lang/String;)Landroid/net/Uri;
invokevirtual android/widget/ImageView/setImageURI(Landroid/net/Uri;)V
return
.limit locals 4
.limit stack 2
.end method

.method public setViewText(Landroid/widget/TextView;Ljava/lang/String;)V
aload 1
aload 2
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 3
.limit stack 2
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
aload 0
aload 1
invokespecial android/support/v4/widget/ResourceCursorAdapter/swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
astore 1
aload 0
aload 0
getfield android/support/v4/widget/SimpleCursorAdapter/mOriginalFrom [Ljava/lang/String;
invokespecial android/support/v4/widget/SimpleCursorAdapter/findColumns([Ljava/lang/String;)V
aload 1
areturn
.limit locals 2
.limit stack 2
.end method
