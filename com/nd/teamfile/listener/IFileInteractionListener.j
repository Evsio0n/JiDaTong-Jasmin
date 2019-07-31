.bytecode 50.0
.class public abstract interface com/nd/teamfile/listener/IFileInteractionListener
.super java/lang/Object

.method public abstract getAllFiles()Ljava/util/Collection;
.signature "()Ljava/util/Collection<Lcom/nd/teamfile/sdk/type/FileExplorerInfo;>;"
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getFileIconHelper()Lcom/nd/teamfile/helper/FileIconHelper;
.end method

.method public abstract getItem(I)Lcom/nd/teamfile/sdk/type/FileExplorerInfo;
.end method

.method public abstract getItemCount()I
.end method

.method public abstract getViewById(I)Landroid/view/View;
.end method

.method public abstract onDataChanged()V
.end method

.method public abstract onRefreshFileList(Ljava/lang/String;Lcom/nd/teamfile/helper/FileSortHelper;)Z
.end method

.method public abstract sortCurrentList(Lcom/nd/teamfile/helper/FileSortHelper;)V
.end method

.method public abstract startActivity(Landroid/content/Intent;)V
.end method
