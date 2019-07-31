.bytecode 50.0
.class public synchronized abstract android/support/v4/widget/CursorAdapter
.super android/widget/BaseAdapter
.implements android/widget/Filterable
.implements android/support/v4/widget/CursorFilter$CursorFilterClient
.inner class static synthetic inner android/support/v4/widget/CursorAdapter$1
.inner class private ChangeObserver inner android/support/v4/widget/CursorAdapter$ChangeObserver outer android/support/v4/widget/CursorAdapter
.inner class private MyDataSetObserver inner android/support/v4/widget/CursorAdapter$MyDataSetObserver outer android/support/v4/widget/CursorAdapter

.field public static final 'FLAG_AUTO_REQUERY' I = 1

.annotation visible Ljava/lang/Deprecated;
.end annotation
.end field

.field public static final 'FLAG_REGISTER_CONTENT_OBSERVER' I = 2


.field protected 'mAutoRequery' Z

.field protected 'mChangeObserver' Landroid/support/v4/widget/CursorAdapter$ChangeObserver;

.field protected 'mContext' Landroid/content/Context;

.field protected 'mCursor' Landroid/database/Cursor;

.field protected 'mCursorFilter' Landroid/support/v4/widget/CursorFilter;

.field protected 'mDataSetObserver' Landroid/database/DataSetObserver;

.field protected 'mDataValid' Z

.field protected 'mFilterQueryProvider' Landroid/widget/FilterQueryProvider;

.field protected 'mRowIDColumn' I

.method public <init>(Landroid/content/Context;Landroid/database/Cursor;)V
.annotation visible Ljava/lang/Deprecated;
.end annotation
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aload 1
aload 2
iconst_1
invokevirtual android/support/v4/widget/CursorAdapter/init(Landroid/content/Context;Landroid/database/Cursor;I)V
return
.limit locals 3
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;Landroid/database/Cursor;I)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aload 1
aload 2
iload 3
invokevirtual android/support/v4/widget/CursorAdapter/init(Landroid/content/Context;Landroid/database/Cursor;I)V
return
.limit locals 4
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
iload 3
ifeq L0
iconst_1
istore 4
L1:
aload 0
aload 1
aload 2
iload 4
invokevirtual android/support/v4/widget/CursorAdapter/init(Landroid/content/Context;Landroid/database/Cursor;I)V
return
L0:
iconst_2
istore 4
goto L1
.limit locals 5
.limit stack 4
.end method

.method public abstract bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end method

.method public changeCursor(Landroid/database/Cursor;)V
aload 0
aload 1
invokevirtual android/support/v4/widget/CursorAdapter/swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
astore 1
aload 1
ifnull L0
aload 1
invokeinterface android/database/Cursor/close()V 0
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
aload 1
ifnonnull L0
ldc ""
areturn
L0:
aload 1
invokevirtual java/lang/Object/toString()Ljava/lang/String;
areturn
.limit locals 2
.limit stack 1
.end method

.method public getCount()I
aload 0
getfield android/support/v4/widget/CursorAdapter/mDataValid Z
ifeq L0
aload 0
getfield android/support/v4/widget/CursorAdapter/mCursor Landroid/database/Cursor;
ifnull L0
aload 0
getfield android/support/v4/widget/CursorAdapter/mCursor Landroid/database/Cursor;
invokeinterface android/database/Cursor/getCount()I 0
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getCursor()Landroid/database/Cursor;
aload 0
getfield android/support/v4/widget/CursorAdapter/mCursor Landroid/database/Cursor;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 0
getfield android/support/v4/widget/CursorAdapter/mDataValid Z
ifeq L0
aload 0
getfield android/support/v4/widget/CursorAdapter/mCursor Landroid/database/Cursor;
iload 1
invokeinterface android/database/Cursor/moveToPosition(I)Z 1
pop
aload 2
ifnonnull L1
aload 0
aload 0
getfield android/support/v4/widget/CursorAdapter/mContext Landroid/content/Context;
aload 0
getfield android/support/v4/widget/CursorAdapter/mCursor Landroid/database/Cursor;
aload 3
invokevirtual android/support/v4/widget/CursorAdapter/newDropDownView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
astore 2
L2:
aload 0
aload 2
aload 0
getfield android/support/v4/widget/CursorAdapter/mContext Landroid/content/Context;
aload 0
getfield android/support/v4/widget/CursorAdapter/mCursor Landroid/database/Cursor;
invokevirtual android/support/v4/widget/CursorAdapter/bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
aload 2
areturn
L1:
goto L2
L0:
aconst_null
areturn
.limit locals 4
.limit stack 4
.end method

.method public getFilter()Landroid/widget/Filter;
aload 0
getfield android/support/v4/widget/CursorAdapter/mCursorFilter Landroid/support/v4/widget/CursorFilter;
ifnonnull L0
aload 0
new android/support/v4/widget/CursorFilter
dup
aload 0
invokespecial android/support/v4/widget/CursorFilter/<init>(Landroid/support/v4/widget/CursorFilter$CursorFilterClient;)V
putfield android/support/v4/widget/CursorAdapter/mCursorFilter Landroid/support/v4/widget/CursorFilter;
L0:
aload 0
getfield android/support/v4/widget/CursorAdapter/mCursorFilter Landroid/support/v4/widget/CursorFilter;
areturn
.limit locals 1
.limit stack 4
.end method

.method public getFilterQueryProvider()Landroid/widget/FilterQueryProvider;
aload 0
getfield android/support/v4/widget/CursorAdapter/mFilterQueryProvider Landroid/widget/FilterQueryProvider;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
getfield android/support/v4/widget/CursorAdapter/mDataValid Z
ifeq L0
aload 0
getfield android/support/v4/widget/CursorAdapter/mCursor Landroid/database/Cursor;
ifnull L0
aload 0
getfield android/support/v4/widget/CursorAdapter/mCursor Landroid/database/Cursor;
iload 1
invokeinterface android/database/Cursor/moveToPosition(I)Z 1
pop
aload 0
getfield android/support/v4/widget/CursorAdapter/mCursor Landroid/database/Cursor;
areturn
L0:
aconst_null
areturn
.limit locals 2
.limit stack 2
.end method

.method public getItemId(I)J
lconst_0
lstore 4
lload 4
lstore 2
aload 0
getfield android/support/v4/widget/CursorAdapter/mDataValid Z
ifeq L0
lload 4
lstore 2
aload 0
getfield android/support/v4/widget/CursorAdapter/mCursor Landroid/database/Cursor;
ifnull L0
lload 4
lstore 2
aload 0
getfield android/support/v4/widget/CursorAdapter/mCursor Landroid/database/Cursor;
iload 1
invokeinterface android/database/Cursor/moveToPosition(I)Z 1
ifeq L0
aload 0
getfield android/support/v4/widget/CursorAdapter/mCursor Landroid/database/Cursor;
aload 0
getfield android/support/v4/widget/CursorAdapter/mRowIDColumn I
invokeinterface android/database/Cursor/getLong(I)J 1
lstore 2
L0:
lload 2
lreturn
.limit locals 6
.limit stack 2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 0
getfield android/support/v4/widget/CursorAdapter/mDataValid Z
ifne L0
new java/lang/IllegalStateException
dup
ldc "this should only be called when the cursor is valid"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
getfield android/support/v4/widget/CursorAdapter/mCursor Landroid/database/Cursor;
iload 1
invokeinterface android/database/Cursor/moveToPosition(I)Z 1
ifne L1
new java/lang/IllegalStateException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "couldn't move cursor to position "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 2
ifnonnull L2
aload 0
aload 0
getfield android/support/v4/widget/CursorAdapter/mContext Landroid/content/Context;
aload 0
getfield android/support/v4/widget/CursorAdapter/mCursor Landroid/database/Cursor;
aload 3
invokevirtual android/support/v4/widget/CursorAdapter/newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
astore 2
L3:
aload 0
aload 2
aload 0
getfield android/support/v4/widget/CursorAdapter/mContext Landroid/content/Context;
aload 0
getfield android/support/v4/widget/CursorAdapter/mCursor Landroid/database/Cursor;
invokevirtual android/support/v4/widget/CursorAdapter/bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
aload 2
areturn
L2:
goto L3
.limit locals 4
.limit stack 4
.end method

.method public hasStableIds()Z
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method

.method init(Landroid/content/Context;Landroid/database/Cursor;I)V
iconst_1
istore 5
iload 3
iconst_1
iand
iconst_1
if_icmpne L0
iload 3
iconst_2
ior
istore 3
aload 0
iconst_1
putfield android/support/v4/widget/CursorAdapter/mAutoRequery Z
L1:
aload 2
ifnull L2
L3:
aload 0
aload 2
putfield android/support/v4/widget/CursorAdapter/mCursor Landroid/database/Cursor;
aload 0
iload 5
putfield android/support/v4/widget/CursorAdapter/mDataValid Z
aload 0
aload 1
putfield android/support/v4/widget/CursorAdapter/mContext Landroid/content/Context;
iload 5
ifeq L4
aload 2
ldc "_id"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
istore 4
L5:
aload 0
iload 4
putfield android/support/v4/widget/CursorAdapter/mRowIDColumn I
iload 3
iconst_2
iand
iconst_2
if_icmpne L6
aload 0
new android/support/v4/widget/CursorAdapter$ChangeObserver
dup
aload 0
invokespecial android/support/v4/widget/CursorAdapter$ChangeObserver/<init>(Landroid/support/v4/widget/CursorAdapter;)V
putfield android/support/v4/widget/CursorAdapter/mChangeObserver Landroid/support/v4/widget/CursorAdapter$ChangeObserver;
aload 0
new android/support/v4/widget/CursorAdapter$MyDataSetObserver
dup
aload 0
aconst_null
invokespecial android/support/v4/widget/CursorAdapter$MyDataSetObserver/<init>(Landroid/support/v4/widget/CursorAdapter;Landroid/support/v4/widget/CursorAdapter$1;)V
putfield android/support/v4/widget/CursorAdapter/mDataSetObserver Landroid/database/DataSetObserver;
L7:
iload 5
ifeq L8
aload 0
getfield android/support/v4/widget/CursorAdapter/mChangeObserver Landroid/support/v4/widget/CursorAdapter$ChangeObserver;
ifnull L9
aload 2
aload 0
getfield android/support/v4/widget/CursorAdapter/mChangeObserver Landroid/support/v4/widget/CursorAdapter$ChangeObserver;
invokeinterface android/database/Cursor/registerContentObserver(Landroid/database/ContentObserver;)V 1
L9:
aload 0
getfield android/support/v4/widget/CursorAdapter/mDataSetObserver Landroid/database/DataSetObserver;
ifnull L8
aload 2
aload 0
getfield android/support/v4/widget/CursorAdapter/mDataSetObserver Landroid/database/DataSetObserver;
invokeinterface android/database/Cursor/registerDataSetObserver(Landroid/database/DataSetObserver;)V 1
L8:
return
L0:
aload 0
iconst_0
putfield android/support/v4/widget/CursorAdapter/mAutoRequery Z
goto L1
L2:
iconst_0
istore 5
goto L3
L4:
iconst_m1
istore 4
goto L5
L6:
aload 0
aconst_null
putfield android/support/v4/widget/CursorAdapter/mChangeObserver Landroid/support/v4/widget/CursorAdapter$ChangeObserver;
aload 0
aconst_null
putfield android/support/v4/widget/CursorAdapter/mDataSetObserver Landroid/database/DataSetObserver;
goto L7
.limit locals 6
.limit stack 5
.end method

.method protected init(Landroid/content/Context;Landroid/database/Cursor;Z)V
.annotation visible Ljava/lang/Deprecated;
.end annotation
iload 3
ifeq L0
iconst_1
istore 4
L1:
aload 0
aload 1
aload 2
iload 4
invokevirtual android/support/v4/widget/CursorAdapter/init(Landroid/content/Context;Landroid/database/Cursor;I)V
return
L0:
iconst_2
istore 4
goto L1
.limit locals 5
.limit stack 4
.end method

.method public newDropDownView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
aload 0
aload 1
aload 2
aload 3
invokevirtual android/support/v4/widget/CursorAdapter/newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
areturn
.limit locals 4
.limit stack 4
.end method

.method public abstract newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected onContentChanged()V
aload 0
getfield android/support/v4/widget/CursorAdapter/mAutoRequery Z
ifeq L0
aload 0
getfield android/support/v4/widget/CursorAdapter/mCursor Landroid/database/Cursor;
ifnull L0
aload 0
getfield android/support/v4/widget/CursorAdapter/mCursor Landroid/database/Cursor;
invokeinterface android/database/Cursor/isClosed()Z 0
ifne L0
aload 0
aload 0
getfield android/support/v4/widget/CursorAdapter/mCursor Landroid/database/Cursor;
invokeinterface android/database/Cursor/requery()Z 0
putfield android/support/v4/widget/CursorAdapter/mDataValid Z
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
aload 0
getfield android/support/v4/widget/CursorAdapter/mFilterQueryProvider Landroid/widget/FilterQueryProvider;
ifnull L0
aload 0
getfield android/support/v4/widget/CursorAdapter/mFilterQueryProvider Landroid/widget/FilterQueryProvider;
aload 1
invokeinterface android/widget/FilterQueryProvider/runQuery(Ljava/lang/CharSequence;)Landroid/database/Cursor; 1
areturn
L0:
aload 0
getfield android/support/v4/widget/CursorAdapter/mCursor Landroid/database/Cursor;
areturn
.limit locals 2
.limit stack 2
.end method

.method public setFilterQueryProvider(Landroid/widget/FilterQueryProvider;)V
aload 0
aload 1
putfield android/support/v4/widget/CursorAdapter/mFilterQueryProvider Landroid/widget/FilterQueryProvider;
return
.limit locals 2
.limit stack 2
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
aload 1
aload 0
getfield android/support/v4/widget/CursorAdapter/mCursor Landroid/database/Cursor;
if_acmpne L0
aconst_null
areturn
L0:
aload 0
getfield android/support/v4/widget/CursorAdapter/mCursor Landroid/database/Cursor;
astore 2
aload 2
ifnull L1
aload 0
getfield android/support/v4/widget/CursorAdapter/mChangeObserver Landroid/support/v4/widget/CursorAdapter$ChangeObserver;
ifnull L2
aload 2
aload 0
getfield android/support/v4/widget/CursorAdapter/mChangeObserver Landroid/support/v4/widget/CursorAdapter$ChangeObserver;
invokeinterface android/database/Cursor/unregisterContentObserver(Landroid/database/ContentObserver;)V 1
L2:
aload 0
getfield android/support/v4/widget/CursorAdapter/mDataSetObserver Landroid/database/DataSetObserver;
ifnull L1
aload 2
aload 0
getfield android/support/v4/widget/CursorAdapter/mDataSetObserver Landroid/database/DataSetObserver;
invokeinterface android/database/Cursor/unregisterDataSetObserver(Landroid/database/DataSetObserver;)V 1
L1:
aload 0
aload 1
putfield android/support/v4/widget/CursorAdapter/mCursor Landroid/database/Cursor;
aload 1
ifnull L3
aload 0
getfield android/support/v4/widget/CursorAdapter/mChangeObserver Landroid/support/v4/widget/CursorAdapter$ChangeObserver;
ifnull L4
aload 1
aload 0
getfield android/support/v4/widget/CursorAdapter/mChangeObserver Landroid/support/v4/widget/CursorAdapter$ChangeObserver;
invokeinterface android/database/Cursor/registerContentObserver(Landroid/database/ContentObserver;)V 1
L4:
aload 0
getfield android/support/v4/widget/CursorAdapter/mDataSetObserver Landroid/database/DataSetObserver;
ifnull L5
aload 1
aload 0
getfield android/support/v4/widget/CursorAdapter/mDataSetObserver Landroid/database/DataSetObserver;
invokeinterface android/database/Cursor/registerDataSetObserver(Landroid/database/DataSetObserver;)V 1
L5:
aload 0
aload 1
ldc "_id"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
putfield android/support/v4/widget/CursorAdapter/mRowIDColumn I
aload 0
iconst_1
putfield android/support/v4/widget/CursorAdapter/mDataValid Z
aload 0
invokevirtual android/support/v4/widget/CursorAdapter/notifyDataSetChanged()V
aload 2
areturn
L3:
aload 0
iconst_m1
putfield android/support/v4/widget/CursorAdapter/mRowIDColumn I
aload 0
iconst_0
putfield android/support/v4/widget/CursorAdapter/mDataValid Z
aload 0
invokevirtual android/support/v4/widget/CursorAdapter/notifyDataSetInvalidated()V
aload 2
areturn
.limit locals 3
.limit stack 3
.end method
