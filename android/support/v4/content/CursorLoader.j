.bytecode 50.0
.class public synchronized android/support/v4/content/CursorLoader
.super android/support/v4/content/AsyncTaskLoader
.signature "Landroid/support/v4/content/AsyncTaskLoader<Landroid/database/Cursor;>;"

.field 'mCursor' Landroid/database/Cursor;

.field final 'mObserver' Landroid/support/v4/content/Loader$ForceLoadContentObserver; signature "Landroid/support/v4/content/Loader<Landroid/database/Cursor;>.ForceLoadContentObserver;"

.field 'mProjection' [Ljava/lang/String;

.field 'mSelection' Ljava/lang/String;

.field 'mSelectionArgs' [Ljava/lang/String;

.field 'mSortOrder' Ljava/lang/String;

.field 'mUri' Landroid/net/Uri;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/support/v4/content/AsyncTaskLoader/<init>(Landroid/content/Context;)V
aload 0
new android/support/v4/content/Loader$ForceLoadContentObserver
dup
aload 0
invokespecial android/support/v4/content/Loader$ForceLoadContentObserver/<init>(Landroid/support/v4/content/Loader;)V
putfield android/support/v4/content/CursorLoader/mObserver Landroid/support/v4/content/Loader$ForceLoadContentObserver;
return
.limit locals 2
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
aload 0
aload 1
invokespecial android/support/v4/content/AsyncTaskLoader/<init>(Landroid/content/Context;)V
aload 0
new android/support/v4/content/Loader$ForceLoadContentObserver
dup
aload 0
invokespecial android/support/v4/content/Loader$ForceLoadContentObserver/<init>(Landroid/support/v4/content/Loader;)V
putfield android/support/v4/content/CursorLoader/mObserver Landroid/support/v4/content/Loader$ForceLoadContentObserver;
aload 0
aload 2
putfield android/support/v4/content/CursorLoader/mUri Landroid/net/Uri;
aload 0
aload 3
putfield android/support/v4/content/CursorLoader/mProjection [Ljava/lang/String;
aload 0
aload 4
putfield android/support/v4/content/CursorLoader/mSelection Ljava/lang/String;
aload 0
aload 5
putfield android/support/v4/content/CursorLoader/mSelectionArgs [Ljava/lang/String;
aload 0
aload 6
putfield android/support/v4/content/CursorLoader/mSortOrder Ljava/lang/String;
return
.limit locals 7
.limit stack 4
.end method

.method public deliverResult(Landroid/database/Cursor;)V
aload 0
invokevirtual android/support/v4/content/CursorLoader/isReset()Z
ifeq L0
aload 1
ifnull L1
aload 1
invokeinterface android/database/Cursor/close()V 0
L1:
return
L0:
aload 0
getfield android/support/v4/content/CursorLoader/mCursor Landroid/database/Cursor;
astore 2
aload 0
aload 1
putfield android/support/v4/content/CursorLoader/mCursor Landroid/database/Cursor;
aload 0
invokevirtual android/support/v4/content/CursorLoader/isStarted()Z
ifeq L2
aload 0
aload 1
invokespecial android/support/v4/content/AsyncTaskLoader/deliverResult(Ljava/lang/Object;)V
L2:
aload 2
ifnull L1
aload 2
aload 1
if_acmpeq L1
aload 2
invokeinterface android/database/Cursor/isClosed()Z 0
ifne L1
aload 2
invokeinterface android/database/Cursor/close()V 0
return
.limit locals 3
.limit stack 2
.end method

.method public volatile synthetic deliverResult(Ljava/lang/Object;)V
aload 0
aload 1
checkcast android/database/Cursor
invokevirtual android/support/v4/content/CursorLoader/deliverResult(Landroid/database/Cursor;)V
return
.limit locals 2
.limit stack 2
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
aload 0
aload 1
aload 2
aload 3
aload 4
invokespecial android/support/v4/content/AsyncTaskLoader/dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
aload 3
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc "mUri="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/content/CursorLoader/mUri Landroid/net/Uri;
invokevirtual java/io/PrintWriter/println(Ljava/lang/Object;)V
aload 3
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc "mProjection="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/content/CursorLoader/mProjection [Ljava/lang/String;
invokestatic java/util/Arrays/toString([Ljava/lang/Object;)Ljava/lang/String;
invokevirtual java/io/PrintWriter/println(Ljava/lang/String;)V
aload 3
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc "mSelection="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/content/CursorLoader/mSelection Ljava/lang/String;
invokevirtual java/io/PrintWriter/println(Ljava/lang/String;)V
aload 3
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc "mSelectionArgs="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/content/CursorLoader/mSelectionArgs [Ljava/lang/String;
invokestatic java/util/Arrays/toString([Ljava/lang/Object;)Ljava/lang/String;
invokevirtual java/io/PrintWriter/println(Ljava/lang/String;)V
aload 3
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc "mSortOrder="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/content/CursorLoader/mSortOrder Ljava/lang/String;
invokevirtual java/io/PrintWriter/println(Ljava/lang/String;)V
aload 3
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc "mCursor="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/content/CursorLoader/mCursor Landroid/database/Cursor;
invokevirtual java/io/PrintWriter/println(Ljava/lang/Object;)V
aload 3
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc "mContentChanged="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/content/CursorLoader/mContentChanged Z
invokevirtual java/io/PrintWriter/println(Z)V
return
.limit locals 5
.limit stack 5
.end method

.method public getProjection()[Ljava/lang/String;
aload 0
getfield android/support/v4/content/CursorLoader/mProjection [Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSelection()Ljava/lang/String;
aload 0
getfield android/support/v4/content/CursorLoader/mSelection Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSelectionArgs()[Ljava/lang/String;
aload 0
getfield android/support/v4/content/CursorLoader/mSelectionArgs [Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSortOrder()Ljava/lang/String;
aload 0
getfield android/support/v4/content/CursorLoader/mSortOrder Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getUri()Landroid/net/Uri;
aload 0
getfield android/support/v4/content/CursorLoader/mUri Landroid/net/Uri;
areturn
.limit locals 1
.limit stack 1
.end method

.method public loadInBackground()Landroid/database/Cursor;
aload 0
invokevirtual android/support/v4/content/CursorLoader/getContext()Landroid/content/Context;
invokevirtual android/content/Context/getContentResolver()Landroid/content/ContentResolver;
aload 0
getfield android/support/v4/content/CursorLoader/mUri Landroid/net/Uri;
aload 0
getfield android/support/v4/content/CursorLoader/mProjection [Ljava/lang/String;
aload 0
getfield android/support/v4/content/CursorLoader/mSelection Ljava/lang/String;
aload 0
getfield android/support/v4/content/CursorLoader/mSelectionArgs [Ljava/lang/String;
aload 0
getfield android/support/v4/content/CursorLoader/mSortOrder Ljava/lang/String;
invokevirtual android/content/ContentResolver/query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 1
aload 1
ifnull L0
aload 1
invokeinterface android/database/Cursor/getCount()I 0
pop
aload 0
aload 1
aload 0
getfield android/support/v4/content/CursorLoader/mObserver Landroid/support/v4/content/Loader$ForceLoadContentObserver;
invokevirtual android/support/v4/content/CursorLoader/registerContentObserver(Landroid/database/Cursor;Landroid/database/ContentObserver;)V
L0:
aload 1
areturn
.limit locals 2
.limit stack 6
.end method

.method public volatile synthetic loadInBackground()Ljava/lang/Object;
aload 0
invokevirtual android/support/v4/content/CursorLoader/loadInBackground()Landroid/database/Cursor;
areturn
.limit locals 1
.limit stack 1
.end method

.method public onCanceled(Landroid/database/Cursor;)V
aload 1
ifnull L0
aload 1
invokeinterface android/database/Cursor/isClosed()Z 0
ifne L0
aload 1
invokeinterface android/database/Cursor/close()V 0
L0:
return
.limit locals 2
.limit stack 1
.end method

.method public volatile synthetic onCanceled(Ljava/lang/Object;)V
aload 0
aload 1
checkcast android/database/Cursor
invokevirtual android/support/v4/content/CursorLoader/onCanceled(Landroid/database/Cursor;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onReset()V
aload 0
invokespecial android/support/v4/content/AsyncTaskLoader/onReset()V
aload 0
invokevirtual android/support/v4/content/CursorLoader/onStopLoading()V
aload 0
getfield android/support/v4/content/CursorLoader/mCursor Landroid/database/Cursor;
ifnull L0
aload 0
getfield android/support/v4/content/CursorLoader/mCursor Landroid/database/Cursor;
invokeinterface android/database/Cursor/isClosed()Z 0
ifne L0
aload 0
getfield android/support/v4/content/CursorLoader/mCursor Landroid/database/Cursor;
invokeinterface android/database/Cursor/close()V 0
L0:
aload 0
aconst_null
putfield android/support/v4/content/CursorLoader/mCursor Landroid/database/Cursor;
return
.limit locals 1
.limit stack 2
.end method

.method protected onStartLoading()V
aload 0
getfield android/support/v4/content/CursorLoader/mCursor Landroid/database/Cursor;
ifnull L0
aload 0
aload 0
getfield android/support/v4/content/CursorLoader/mCursor Landroid/database/Cursor;
invokevirtual android/support/v4/content/CursorLoader/deliverResult(Landroid/database/Cursor;)V
L0:
aload 0
invokevirtual android/support/v4/content/CursorLoader/takeContentChanged()Z
ifne L1
aload 0
getfield android/support/v4/content/CursorLoader/mCursor Landroid/database/Cursor;
ifnonnull L2
L1:
aload 0
invokevirtual android/support/v4/content/CursorLoader/forceLoad()V
L2:
return
.limit locals 1
.limit stack 2
.end method

.method protected onStopLoading()V
aload 0
invokevirtual android/support/v4/content/CursorLoader/cancelLoad()Z
pop
return
.limit locals 1
.limit stack 1
.end method

.method registerContentObserver(Landroid/database/Cursor;Landroid/database/ContentObserver;)V
aload 1
aload 0
getfield android/support/v4/content/CursorLoader/mObserver Landroid/support/v4/content/Loader$ForceLoadContentObserver;
invokeinterface android/database/Cursor/registerContentObserver(Landroid/database/ContentObserver;)V 1
return
.limit locals 3
.limit stack 2
.end method

.method public setProjection([Ljava/lang/String;)V
aload 0
aload 1
putfield android/support/v4/content/CursorLoader/mProjection [Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setSelection(Ljava/lang/String;)V
aload 0
aload 1
putfield android/support/v4/content/CursorLoader/mSelection Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setSelectionArgs([Ljava/lang/String;)V
aload 0
aload 1
putfield android/support/v4/content/CursorLoader/mSelectionArgs [Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setSortOrder(Ljava/lang/String;)V
aload 0
aload 1
putfield android/support/v4/content/CursorLoader/mSortOrder Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setUri(Landroid/net/Uri;)V
aload 0
aload 1
putfield android/support/v4/content/CursorLoader/mUri Landroid/net/Uri;
return
.limit locals 2
.limit stack 2
.end method
