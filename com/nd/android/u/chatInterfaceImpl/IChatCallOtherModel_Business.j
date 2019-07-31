.bytecode 50.0
.class public abstract interface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business
.super java/lang/Object

.method public abstract agreeToAddGroup(JJI)V
.end method

.method public abstract checkUidIsBlackList(J)Z
.end method

.method public abstract checkUidIsMyFolling(Landroid/content/Context;J)Z
.end method

.method public abstract clearBindUserList()V
.end method

.method public abstract depMemberChangeNotifi()V
.end method

.method public abstract getGroupMemberIds(J)Ljava/util/ArrayList;
.signature "(J)Ljava/util/ArrayList<Ljava/lang/Long;>;"
.end method

.method public abstract getGroupMsgReceiveType(Ljava/lang/String;)I
.end method

.method public abstract getGroupName(IJ)Ljava/lang/String;
.end method

.method public abstract getGroupNameByGUid(JJ)Ljava/lang/String;
.end method

.method public abstract getGroupNotice(IJ)Ljava/lang/String;
.end method

.method public abstract getGroupOwnerId(IJ)J
.end method

.method public abstract getGroupSetNameByType(I)Ljava/lang/String;
.end method

.method public abstract getLocalGroupName(J)Ljava/lang/String;
.end method

.method public abstract getOapUid()J
.end method

.method public abstract getOapUserInBackgroundThread(J)V
.end method

.method public abstract getReceivegroupmsg()I
.end method

.method public abstract getShareFileCategory(J)I
.end method

.method public abstract getSid(Z)Ljava/lang/String;
.end method

.method public abstract getSysAvatarId(J)I
.end method

.method public abstract getUapUid()J
.end method

.method public abstract getUnitid()I
.end method

.method public abstract getUserGroups()Ljava/util/ArrayList;
.signature "()Ljava/util/ArrayList<Lims/outInterface/IGroup;>;"
.end method

.method public abstract getUserName(J)Ljava/lang/String;
.end method

.method public abstract getUserSignature(J)Ljava/lang/String;
.end method

.method public abstract groupAuthUpdate(Ljava/lang/String;JI)Ljava/lang/String;
.end method

.method public abstract groupChangeInfo(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract groupDismessed(JI)V
.end method

.method public abstract groupMsgQuit(JJI)V
.end method

.method public abstract groupUpdateMember(Ljava/lang/String;JJII)Ljava/lang/String;
.end method

.method public abstract initAllGroup()V
.end method

.method public abstract isGroupsExist()Z
.end method

.method public abstract isInMyFriendGroup(J)Z
.end method

.method public abstract joinGroup(Ljava/lang/String;II)V
.end method

.method public abstract notifyGroupAddMemberResult(I)V
.end method

.method public abstract notifyGroupDelMemberResult(I)V
.end method

.method public abstract notifyGroupDismissResult(Ljava/lang/String;I)V
.end method

.method public abstract notifyGroupInfoModResult(I)V
.end method

.method public abstract notifyGroupQuitResult(Ljava/lang/String;II)V
.end method

.method public abstract notifyGroupTransferResult(I)V
.end method

.method public abstract notifyIdentityExpired(Z)V
.end method

.method public abstract notifyOffline(Z)V
.end method

.method public abstract notifySignatureChanged(JLjava/lang/String;)V
.end method

.method public abstract notifySysavaterChanged(JI)V
.end method

.method public abstract setExpiredSid()V
.end method

.method public abstract updateReceiveGroupMsg(II)V
.end method
