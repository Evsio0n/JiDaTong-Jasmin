.bytecode 50.0
.class public synchronized abstract android/support/v4/widget/ResourceCursorAdapter
.super android/support/v4/widget/CursorAdapter

.field private 'mDropDownLayout' I

.field private 'mInflater' Landroid/view/LayoutInflater;

.field private 'mLayout' I

.method public <init>(Landroid/content/Context;ILandroid/database/Cursor;)V
.annotation visible Ljava/lang/Deprecated;
.end annotation
aload 0
aload 1
aload 3
invokespecial android/support/v4/widget/CursorAdapter/<init>(Landroid/content/Context;Landroid/database/Cursor;)V
aload 0
iload 2
putfield android/support/v4/widget/ResourceCursorAdapter/mDropDownLayout I
aload 0
iload 2
putfield android/support/v4/widget/ResourceCursorAdapter/mLayout I
aload 0
aload 1
ldc "layout_inflater"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/LayoutInflater
putfield android/support/v4/widget/ResourceCursorAdapter/mInflater Landroid/view/LayoutInflater;
return
.limit locals 4
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;ILandroid/database/Cursor;I)V
aload 0
aload 1
aload 3
iload 4
invokespecial android/support/v4/widget/CursorAdapter/<init>(Landroid/content/Context;Landroid/database/Cursor;I)V
aload 0
iload 2
putfield android/support/v4/widget/ResourceCursorAdapter/mDropDownLayout I
aload 0
iload 2
putfield android/support/v4/widget/ResourceCursorAdapter/mLayout I
aload 0
aload 1
ldc "layout_inflater"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/LayoutInflater
putfield android/support/v4/widget/ResourceCursorAdapter/mInflater Landroid/view/LayoutInflater;
return
.limit locals 5
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V
aload 0
aload 1
aload 3
iload 4
invokespecial android/support/v4/widget/CursorAdapter/<init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
aload 0
iload 2
putfield android/support/v4/widget/ResourceCursorAdapter/mDropDownLayout I
aload 0
iload 2
putfield android/support/v4/widget/ResourceCursorAdapter/mLayout I
aload 0
aload 1
ldc "layout_inflater"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/LayoutInflater
putfield android/support/v4/widget/ResourceCursorAdapter/mInflater Landroid/view/LayoutInflater;
return
.limit locals 5
.limit stack 4
.end method

.method public newDropDownView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
aload 0
getfield android/support/v4/widget/ResourceCursorAdapter/mInflater Landroid/view/LayoutInflater;
aload 0
getfield android/support/v4/widget/ResourceCursorAdapter/mDropDownLayout I
aload 3
iconst_0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
areturn
.limit locals 4
.limit stack 4
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
aload 0
getfield android/support/v4/widget/ResourceCursorAdapter/mInflater Landroid/view/LayoutInflater;
aload 0
getfield android/support/v4/widget/ResourceCursorAdapter/mLayout I
aload 3
iconst_0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
areturn
.limit locals 4
.limit stack 4
.end method

.method public setDropDownViewResource(I)V
aload 0
iload 1
putfield android/support/v4/widget/ResourceCursorAdapter/mDropDownLayout I
return
.limit locals 2
.limit stack 2
.end method

.method public setViewResource(I)V
aload 0
iload 1
putfield android/support/v4/widget/ResourceCursorAdapter/mLayout I
return
.limit locals 2
.limit stack 2
.end method
