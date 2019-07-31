.bytecode 50.0
.class public synchronized abstract android/support/v4/app/LoaderManager
.super java/lang/Object
.inner class public static abstract interface LoaderCallbacks inner android/support/v4/app/LoaderManager$LoaderCallbacks outer android/support/v4/app/LoaderManager

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static enableDebugLogging(Z)V
iload 0
putstatic android/support/v4/app/LoaderManagerImpl/DEBUG Z
return
.limit locals 1
.limit stack 1
.end method

.method public abstract destroyLoader(I)V
.end method

.method public abstract dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract getLoader(I)Landroid/support/v4/content/Loader;
.signature "<D:Ljava/lang/Object;>(I)Landroid/support/v4/content/Loader<TD;>;"
.end method

.method public hasRunningLoaders()Z
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public abstract initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;
.signature "<D:Ljava/lang/Object;>(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks<TD;>;)Landroid/support/v4/content/Loader<TD;>;"
.end method

.method public abstract restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;
.signature "<D:Ljava/lang/Object;>(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks<TD;>;)Landroid/support/v4/content/Loader<TD;>;"
.end method
