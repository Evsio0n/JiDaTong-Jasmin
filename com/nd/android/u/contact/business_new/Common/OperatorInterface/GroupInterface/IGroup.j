.bytecode 50.0
.class public abstract interface com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup
.super java/lang/Object

.method public abstract addGroupDataObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver;)V
.end method

.method public abstract addGroupStateObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupStateObserver;)V
.end method

.method public abstract addMember(Ljava/lang/String;Ljava/util/Iterator;)Z
.signature "(Ljava/lang/String;Ljava/util/Iterator<Ljava/lang/Long;>;)Z"
.end method

.method public abstract addMemberByDB(Ljava/util/Iterator;)Z
.signature "(Ljava/util/Iterator<Ljava/lang/Long;>;)Z"
.end method

.method public abstract clearMsgNofifyType()V
.end method

.method public abstract delMember(Ljava/lang/String;Ljava/util/Iterator;)Z
.signature "(Ljava/lang/String;Ljava/util/Iterator<Ljava/lang/Long;>;)Z"
.end method

.method public abstract delMemberByDB(Ljava/util/Iterator;)Z
.signature "(Ljava/util/Iterator<Ljava/lang/Long;>;)Z"
.end method

.method public abstract getCatagory()I
.end method

.method public abstract getChatGroupType()I
.end method

.method public abstract getCreatorID()J
.end method

.method public abstract getGID()J
.end method

.method public abstract getGroupKey()Ljava/lang/String;
.end method

.method public abstract getIntroduction()Ljava/lang/String;
.end method

.method public abstract getManagerList()Ljava/util/Iterator;
.signature "()Ljava/util/Iterator<Lcom/product/android/commonInterface/contact/OapUser;>;"
.end method

.method public abstract getMember()Ljava/util/Iterator;
.signature "()Ljava/util/Iterator<Lcom/product/android/commonInterface/contact/OapUser;>;"
.end method

.method public abstract getMsgNotifyType()I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNotice()Ljava/lang/String;
.end method

.method public abstract getPermission()I
.end method

.method public abstract getPermissionDescription()Ljava/lang/String;
.end method

.method public abstract initGroup(Lorg/json/JSONObject;)V
.end method

.method public abstract isManager(J)Z
.end method

.method public abstract isMember(J)Z
.end method

.method public abstract loadGroup()Z
.end method

.method public abstract quit(Ljava/lang/String;)Z
.end method

.method public abstract removeGroupDataObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver;)V
.end method

.method public abstract removeGroupStateObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupStateObserver;)V
.end method

.method public abstract setCatagory(I)Z
.end method

.method public abstract setIntroduction(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract setIntroductionByDB(Ljava/lang/String;)Z
.end method

.method public abstract setMsgNotifyType(Ljava/lang/String;I)Z
.end method

.method public abstract setMsgNotifyTypeByDB(I)Z
.end method

.method public abstract setNameByDb(Ljava/lang/String;)Z
.end method

.method public abstract setNotice(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract setNoticeByDB(Ljava/lang/String;)Z
.end method

.method public abstract setPermission(Ljava/lang/String;I)Z
.end method

.method public abstract setPermissionByDB(I)Z
.end method

.method public abstract switchMemberRole(JI)Z
.end method

.method public abstract synGroup()Z
.end method

.method public abstract transfer(Ljava/lang/String;J)Z
.end method

.method public abstract transferByDB(J)Z
.end method
