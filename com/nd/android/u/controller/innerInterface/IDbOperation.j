.bytecode 50.0
.class public abstract interface com/nd/android/u/controller/innerInterface/IDbOperation
.super java/lang/Object

.method public abstract delete(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Z
.end method

.method public abstract deleteAll(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Z
.end method

.method public abstract getAll(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Landroid/database/Cursor;
.end method

.method public abstract getByCmd(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;I)Z
.end method

.method public abstract getData(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Z
.end method

.method public abstract getEarlierMessage(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;JI)Landroid/database/Cursor;
.end method

.method public abstract getLastMessage(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Z
.end method

.method public abstract getLastMessageBywseq(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;I)Z
.end method

.method public abstract getLastNoAckMessage(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Z
.end method

.method public abstract getMessageCount(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)I
.end method

.method public abstract getMessageCountByUnreadMessageCount(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;I)I
.end method

.method public abstract getNoAckMessages(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Landroid/database/Cursor;
.end method

.method public abstract insert(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Z
.end method

.method public abstract isExist(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Z
.end method

.method public abstract isExistByMsgId(J)Z
.end method

.method public abstract setAllMessageAcked(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Z
.end method

.method public abstract update(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Z
.end method

.method public abstract updateByCmd(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;ILjava/lang/Object;)Z
.end method
