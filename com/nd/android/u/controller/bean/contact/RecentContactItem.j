.bytecode 50.0
.class public synchronized abstract com/nd/android/u/controller/bean/contact/RecentContactItem
.super java/lang/Object
.implements java/lang/Comparable
.signature "Ljava/lang/Object;Ljava/lang/Comparable<Lcom/nd/android/u/controller/bean/contact/RecentContactItem;>;"

.field protected 'mAckType' I

.field protected volatile 'mCode' Ljava/lang/String;

.field protected volatile 'mId' Ljava/lang/String;

.field private volatile 'mLastContactTime' J

.field protected 'mLastMsgContent' Ljava/lang/String;

.field protected 'mLastMsgContentType' I

.field protected volatile 'mLastMsgId' Ljava/lang/String;

.field protected 'mLastMsgServerId' J

.field private volatile 'mLastMsgState' I

.field protected 'mMultipleId' J

.field protected volatile 'mUnreadCount' I

.field public 'mVersion' I

.field protected 'mduration' I

.field protected 'name' Ljava/lang/String;

.field protected 'parent' I

.field protected 'spannableText' Landroid/text/SpannableString;

.field protected 'subType' I

.field protected 'topTime' J

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_m1
putfield com/nd/android/u/controller/bean/contact/RecentContactItem/mduration I
aload 0
iconst_1
putfield com/nd/android/u/controller/bean/contact/RecentContactItem/mVersion I
return
.limit locals 1
.limit stack 2
.end method

.method public ackMsg()V
aload 0
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/getDisplayMessage()Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
astore 1
aload 1
ifnull L0
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getProccessInterface()Lcom/nd/android/u/controller/innerInterface/IMessageProccess; 0
invokeinterface com/nd/android/u/controller/innerInterface/IMessageProccess/ackAllMessage()V 0
L0:
return
.limit locals 2
.limit stack 1
.end method

.method public abstract addIdentity(Landroid/content/ContentValues;)V
.end method

.method public compareTo(Lcom/nd/android/u/controller/bean/contact/RecentContactItem;)I
aload 0
getfield com/nd/android/u/controller/bean/contact/RecentContactItem/topTime J
aload 1
getfield com/nd/android/u/controller/bean/contact/RecentContactItem/topTime J
lcmp
ifle L0
L1:
iconst_m1
ireturn
L0:
aload 0
getfield com/nd/android/u/controller/bean/contact/RecentContactItem/topTime J
aload 1
getfield com/nd/android/u/controller/bean/contact/RecentContactItem/topTime J
lcmp
ifne L2
aload 0
getfield com/nd/android/u/controller/bean/contact/RecentContactItem/mLastContactTime J
aload 1
getfield com/nd/android/u/controller/bean/contact/RecentContactItem/mLastContactTime J
lcmp
ifne L3
aload 0
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/getMessageType()I
aload 1
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/getMessageType()I
if_icmpgt L1
iconst_1
ireturn
L3:
aload 0
getfield com/nd/android/u/controller/bean/contact/RecentContactItem/mLastContactTime J
aload 1
getfield com/nd/android/u/controller/bean/contact/RecentContactItem/mLastContactTime J
lcmp
ifgt L1
iconst_1
ireturn
L2:
iconst_1
ireturn
.limit locals 2
.limit stack 4
.end method

.method public volatile synthetic compareTo(Ljava/lang/Object;)I
aload 0
aload 1
checkcast com/nd/android/u/controller/bean/contact/RecentContactItem
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/compareTo(Lcom/nd/android/u/controller/bean/contact/RecentContactItem;)I
ireturn
.limit locals 2
.limit stack 2
.end method

.method protected convertId()J
.catch java/lang/NumberFormatException from L0 to L1 using L2
L0:
aload 0
getfield com/nd/android/u/controller/bean/contact/RecentContactItem/mId Ljava/lang/String;
invokestatic java/lang/Long/valueOf(Ljava/lang/String;)Ljava/lang/Long;
invokevirtual java/lang/Long/longValue()J
lstore 1
L1:
lload 1
lreturn
L2:
astore 3
ldc2_w -1L
lreturn
.limit locals 4
.limit stack 2
.end method

.method protected abstract cursor2Identity(Ljava/lang/String;)V
.end method

.method public cursor2Item(Landroid/database/Cursor;)V
aload 0
aload 1
aload 1
ldc "extra_id"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/cursor2Identity(Ljava/lang/String;)V
aload 0
aload 1
aload 1
ldc "count"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/nd/android/u/controller/bean/contact/RecentContactItem/mUnreadCount I
aload 0
aload 1
aload 1
ldc "time"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
putfield com/nd/android/u/controller/bean/contact/RecentContactItem/mLastContactTime J
aload 0
aload 1
aload 1
ldc "multiple_id"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
putfield com/nd/android/u/controller/bean/contact/RecentContactItem/mMultipleId J
aload 0
aload 1
aload 1
ldc "last_msg"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/nd/android/u/controller/bean/contact/RecentContactItem/mLastMsgContent Ljava/lang/String;
aload 0
aload 1
aload 1
ldc "last_state"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/nd/android/u/controller/bean/contact/RecentContactItem/mLastMsgState I
aload 0
aload 1
aload 1
ldc "last_msg_id"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/nd/android/u/controller/bean/contact/RecentContactItem/mLastMsgId Ljava/lang/String;
aload 0
aload 1
aload 1
ldc "last_msg_server_id"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
putfield com/nd/android/u/controller/bean/contact/RecentContactItem/mLastMsgServerId J
aload 0
aload 1
aload 1
ldc "last_msg_type"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/nd/android/u/controller/bean/contact/RecentContactItem/mLastMsgContentType I
aload 0
aload 1
aload 1
ldc "duration"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/nd/android/u/controller/bean/contact/RecentContactItem/mduration I
aload 0
aload 1
aload 1
ldc "version"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/nd/android/u/controller/bean/contact/RecentContactItem/mVersion I
aload 0
aload 1
aload 1
ldc "acktype"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/nd/android/u/controller/bean/contact/RecentContactItem/mAckType I
aload 0
aload 1
aload 1
ldc "parent"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/nd/android/u/controller/bean/contact/RecentContactItem/parent I
aload 0
aload 1
aload 1
ldc "toptime"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
putfield com/nd/android/u/controller/bean/contact/RecentContactItem/topTime J
return
.limit locals 2
.limit stack 4
.end method

.method public abstract displayHeadPortrait(Landroid/widget/ImageView;)V
.end method

.method public getClearUnreadCountValue()Landroid/content/ContentValues;
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 1
aload 1
ldc "count"
iconst_0
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 1
areturn
.limit locals 2
.limit stack 3
.end method

.method public abstract getContentText()Landroid/text/SpannableString;
.end method

.method protected getDisplayClass()Ljava/lang/Class;
.signature "()Ljava/lang/Class<*>;"
getstatic com/nd/android/u/controller/factory/MessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/MessageFactory;
aload 0
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/getDisplayMessage()Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokevirtual com/nd/android/u/controller/factory/MessageFactory/getDisplayClass(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Ljava/lang/Class;
areturn
.limit locals 1
.limit stack 2
.end method

.method protected abstract getDisplayMessage()Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
.end method

.method protected getHashCodeHelper()I
aload 0
getfield com/nd/android/u/controller/bean/contact/RecentContactItem/mId Ljava/lang/String;
invokevirtual java/lang/String/hashCode()I
sipush 527
iadd
ireturn
.limit locals 1
.limit stack 2
.end method

.method public getId()Ljava/lang/String;
aload 0
getfield com/nd/android/u/controller/bean/contact/RecentContactItem/mId Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public abstract getIdentity()Ljava/lang/String;
.end method

.method public getLastContactTime()J
aload 0
getfield com/nd/android/u/controller/bean/contact/RecentContactItem/mLastContactTime J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getLastMsgContent()Ljava/lang/String;
aload 0
getfield com/nd/android/u/controller/bean/contact/RecentContactItem/mLastMsgContent Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getLastMsgContentType()I
aload 0
getfield com/nd/android/u/controller/bean/contact/RecentContactItem/mLastMsgContentType I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getLastMsgId()Ljava/lang/String;
aload 0
getfield com/nd/android/u/controller/bean/contact/RecentContactItem/mLastMsgId Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getLastMsgServerId()J
aload 0
getfield com/nd/android/u/controller/bean/contact/RecentContactItem/mLastMsgServerId J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getLastMsgState()I
aload 0
getfield com/nd/android/u/controller/bean/contact/RecentContactItem/mLastMsgState I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public abstract getMessageType()I
.end method

.method public abstract getMsgTitle(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public getParent()I
aload 0
getfield com/nd/android/u/controller/bean/contact/RecentContactItem/parent I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getTopTime()J
aload 0
getfield com/nd/android/u/controller/bean/contact/RecentContactItem/topTime J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getUnreadCount()I
aload 0
getfield com/nd/android/u/controller/bean/contact/RecentContactItem/mUnreadCount I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getduration()I
aload 0
getfield com/nd/android/u/controller/bean/contact/RecentContactItem/mduration I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getmAckType()I
aload 0
getfield com/nd/android/u/controller/bean/contact/RecentContactItem/mAckType I
ireturn
.limit locals 1
.limit stack 1
.end method

.method protected isIdValid()Z
aload 0
getfield com/nd/android/u/controller/bean/contact/RecentContactItem/mId Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
iconst_0
ireturn
L0:
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isMatch(Landroid/content/Context;Ljava/lang/String;)Z
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
iconst_0
ireturn
L0:
aload 0
aload 1
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/getMsgTitle(Landroid/content/Context;)Ljava/lang/String;
aload 2
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ireturn
.limit locals 3
.limit stack 2
.end method

.method public isObjectValid()Z
aload 0
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/isPrimaryKeyValid()Z
ifne L0
L1:
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/controller/bean/contact/RecentContactItem/mUnreadCount I
iflt L1
aload 0
getfield com/nd/android/u/controller/bean/contact/RecentContactItem/mLastMsgContent Ljava/lang/String;
ifnull L1
aload 0
getfield com/nd/android/u/controller/bean/contact/RecentContactItem/mLastMsgId Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method

.method public abstract isPrimaryKeyValid()Z
.end method

.method public abstract onClickHeadPortrait(Landroid/content/Context;)V
.end method

.method public abstract onClickItem(Landroid/content/Context;)V
.end method

.method public abstract onForwarding(Landroid/app/Activity;Lcom/nd/android/u/controller/bean/contact/ForwardingParam;)V
.end method

.method public plusUnreadCount(I)V
aload 0
aload 0
getfield com/nd/android/u/controller/bean/contact/RecentContactItem/mUnreadCount I
iload 1
iadd
putfield com/nd/android/u/controller/bean/contact/RecentContactItem/mUnreadCount I
return
.limit locals 2
.limit stack 3
.end method

.method public resetName()V
aload 0
aconst_null
putfield com/nd/android/u/controller/bean/contact/RecentContactItem/name Ljava/lang/String;
return
.limit locals 1
.limit stack 2
.end method

.method public setCode(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/controller/bean/contact/RecentContactItem/mCode Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setId(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/controller/bean/contact/RecentContactItem/mId Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setLastContactTime(J)V
aload 0
lload 1
putfield com/nd/android/u/controller/bean/contact/RecentContactItem/mLastContactTime J
return
.limit locals 3
.limit stack 3
.end method

.method public setLastMsgContent(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/controller/bean/contact/RecentContactItem/mLastMsgContent Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setLastMsgContentType(I)V
aload 0
iload 1
putfield com/nd/android/u/controller/bean/contact/RecentContactItem/mLastMsgContentType I
return
.limit locals 2
.limit stack 2
.end method

.method public setLastMsgId(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/controller/bean/contact/RecentContactItem/mLastMsgId Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setLastMsgServerId(J)V
aload 0
lload 1
putfield com/nd/android/u/controller/bean/contact/RecentContactItem/mLastMsgServerId J
return
.limit locals 3
.limit stack 3
.end method

.method public setLastMsgState(I)V
aload 0
iload 1
putfield com/nd/android/u/controller/bean/contact/RecentContactItem/mLastMsgState I
return
.limit locals 2
.limit stack 2
.end method

.method public setMultipleId(J)V
aload 0
lload 1
putfield com/nd/android/u/controller/bean/contact/RecentContactItem/mMultipleId J
return
.limit locals 3
.limit stack 3
.end method

.method public setParent(I)V
aload 0
iload 1
putfield com/nd/android/u/controller/bean/contact/RecentContactItem/parent I
return
.limit locals 2
.limit stack 2
.end method

.method public setSubtype(I)V
aload 0
iload 1
putfield com/nd/android/u/controller/bean/contact/RecentContactItem/subType I
return
.limit locals 2
.limit stack 2
.end method

.method public setTopTime(J)V
aload 0
lload 1
putfield com/nd/android/u/controller/bean/contact/RecentContactItem/topTime J
return
.limit locals 3
.limit stack 3
.end method

.method public setUnreadCount(I)V
aload 0
iload 1
putfield com/nd/android/u/controller/bean/contact/RecentContactItem/mUnreadCount I
return
.limit locals 2
.limit stack 2
.end method

.method public setduration(I)V
aload 0
iload 1
putfield com/nd/android/u/controller/bean/contact/RecentContactItem/mduration I
return
.limit locals 2
.limit stack 2
.end method

.method public setmAckType(I)V
aload 0
iload 1
putfield com/nd/android/u/controller/bean/contact/RecentContactItem/mAckType I
return
.limit locals 2
.limit stack 2
.end method

.method public toContentValues()Landroid/content/ContentValues;
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 1
aload 1
ldc "type"
aload 0
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/getMessageType()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 1
ldc "count"
aload 0
getfield com/nd/android/u/controller/bean/contact/RecentContactItem/mUnreadCount I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 1
ldc "time"
aload 0
getfield com/nd/android/u/controller/bean/contact/RecentContactItem/mLastContactTime J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 1
ldc "multiple_id"
aload 0
getfield com/nd/android/u/controller/bean/contact/RecentContactItem/mMultipleId J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 1
ldc "last_msg"
aload 0
getfield com/nd/android/u/controller/bean/contact/RecentContactItem/mLastMsgContent Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "last_state"
aload 0
getfield com/nd/android/u/controller/bean/contact/RecentContactItem/mLastMsgState I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 1
ldc "last_msg_id"
aload 0
getfield com/nd/android/u/controller/bean/contact/RecentContactItem/mLastMsgId Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "last_msg_server_id"
aload 0
getfield com/nd/android/u/controller/bean/contact/RecentContactItem/mLastMsgServerId J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 1
ldc "last_msg_type"
aload 0
getfield com/nd/android/u/controller/bean/contact/RecentContactItem/mLastMsgContentType I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 1
ldc "duration"
aload 0
getfield com/nd/android/u/controller/bean/contact/RecentContactItem/mduration I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 1
ldc "version"
aload 0
getfield com/nd/android/u/controller/bean/contact/RecentContactItem/mVersion I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 1
ldc "acktype"
aload 0
getfield com/nd/android/u/controller/bean/contact/RecentContactItem/mAckType I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 1
ldc "toptime"
aload 0
getfield com/nd/android/u/controller/bean/contact/RecentContactItem/topTime J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 1
ldc "parent"
aload 0
getfield com/nd/android/u/controller/bean/contact/RecentContactItem/parent I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 0
aload 1
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/addIdentity(Landroid/content/ContentValues;)V
aload 1
areturn
.limit locals 2
.limit stack 4
.end method

.method public toString()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 2
aload 0
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/getMessageType()I
istore 1
aload 2
ldc "MessageType\uff1a"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc_w 65292
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
pop
aload 2
ldc "mId\uff1a"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/controller/bean/contact/RecentContactItem/mId Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc_w 65292
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
pop
aload 2
ldc "mUnreadCount\uff1a"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/controller/bean/contact/RecentContactItem/mUnreadCount I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc_w 65292
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
pop
aload 2
ldc "mLastMsgContent\uff1a"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
getfield com/nd/android/u/controller/bean/contact/RecentContactItem/mLastMsgContent Ljava/lang/String;
ifnonnull L0
aload 2
ldc "null"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L1:
aload 2
ldc_w 65292
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
pop
aload 2
ldc "mLastMsgState\uff1a"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
aload 0
getfield com/nd/android/u/controller/bean/contact/RecentContactItem/mLastMsgState I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
aload 2
ldc_w 65292
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
pop
aload 2
ldc "mLastMsgId\uff1a"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
getfield com/nd/android/u/controller/bean/contact/RecentContactItem/mLastMsgId Ljava/lang/String;
ifnonnull L2
aload 2
ldc "null"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L3:
aload 2
ldc_w 65292
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
pop
aload 2
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L0:
aload 2
aload 0
getfield com/nd/android/u/controller/bean/contact/RecentContactItem/mLastMsgContent Ljava/lang/String;
invokevirtual java/lang/String/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L1
L2:
aload 2
aload 0
getfield com/nd/android/u/controller/bean/contact/RecentContactItem/mLastMsgId Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L3
.limit locals 3
.limit stack 2
.end method
