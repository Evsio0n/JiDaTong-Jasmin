.bytecode 50.0
.class public abstract interface com/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI
.super java/lang/Object

.method public abstract acceptDelay(Landroid/content/Context;Lcom/product/android/commonInterface/chat/ErpInfo;)V
.end method

.method public abstract acceptTask(Landroid/content/Context;Lcom/product/android/commonInterface/chat/ErpInfo;)V
.end method

.method public abstract addFriend(Landroid/app/Activity;JLjava/lang/String;)V
.end method

.method public abstract addFriendOap(J)Lcom/common/android/utils/task/genericTask/TaskResult;
.end method

.method public abstract addFriendWeiBo(J)Lcom/common/android/utils/task/genericTask/TaskResult;
.end method

.method public abstract addToBlackList(J)Z
.end method

.method public abstract agreeToAddFriend(J)Lcom/common/android/utils/task/genericTask/TaskResult;
.end method

.method public abstract allocateTask(Landroid/content/Context;JLjava/lang/String;)V
.end method

.method public abstract callOtherApprovalJoin(JJZLjava/lang/String;)Ljava/util/Map;
.signature "(JJZLjava/lang/String;)Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
.end method

.method public abstract callOtherGotoCommunityHome(Landroid/content/Context;I)V
.end method

.method public abstract callOtherGotoTeamHome(Landroid/content/Context;J)V
.end method

.method public abstract checkGroupExist(J)Z
.end method

.method public abstract delFromBlackList(J)Z
.end method

.method public abstract deleteFriendOap(J)Lcom/common/android/utils/task/genericTask/TaskResult;
.end method

.method public abstract deleteFriendWeiBo(J)Lcom/common/android/utils/task/genericTask/TaskResult;
.end method

.method public abstract finishTask(Landroid/content/Context;Lcom/product/android/commonInterface/chat/ErpInfo;)V
.end method

.method public abstract getAppName(ILjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getApplistById(I)Ljava/util/ArrayList;
.signature "(I)Ljava/util/ArrayList<Lcom/product/android/commonInterface/contact/OapApp;>;"
.end method

.method public abstract getCommunityOrTeamAvatar(JLjava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract getFlowerMessage(J)Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
.end method

.method public abstract getOapUser(J)Lcom/product/android/commonInterface/contact/OapUser;
.end method

.method public abstract getOapUserFromServer(J)Lcom/product/android/commonInterface/contact/OapUser;
.end method

.method public abstract getThanksFlowerMessage()Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
.end method

.method public abstract goToAddFriendGroupActivity(JLandroid/content/Context;)V
.end method

.method public abstract goToCreateCommunityActivity(JLandroid/content/Context;)V
.end method

.method public abstract goToCreateTeamActivity(JLandroid/content/Context;)V
.end method

.method public abstract gotoAddFriendActivity(Landroid/content/Context;)V
.end method

.method public abstract gotoAddGroupMemberActivity(Landroid/content/Context;I)V
.end method

.method public abstract gotoApplyWoflowBagActivity(Landroid/content/Context;)V
.end method

.method public abstract gotoDiscussionManagerActivity(Landroid/content/Context;Landroid/os/Bundle;)V
.end method

.method public abstract gotoGroupManagerActivity(Landroid/content/Context;Landroid/os/Bundle;)V
.end method

.method public abstract gotoSelectUserActivity(Landroid/content/Context;JIZ)V
.end method

.method public abstract gotoTweetProfileActivity(Landroid/content/Context;J)V
.end method

.method public abstract isInstallApp(Lcom/product/android/commonInterface/contact/OapApp;)Z
.end method

.method public abstract judgeOpenWoflowBag(J)Z
.end method

.method public abstract jumpActivity(ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;Z)V
.end method

.method public abstract notifyDeleteClubGroupByGid(J)V
.end method

.method public abstract notifyNewFans(JLjava/lang/String;)V
.end method

.method public abstract notifyNewJuniorRequest(Lcom/nd/android/u/bean4xy/DisplayMessage_App;)V
.end method

.method public abstract notifyPullClubGourpByGid(J)V
.end method

.method public abstract openAddFriendFollowRequestDialog(Landroid/content/Context;Lcom/product/android/commonInterface/contact/OapUser;)V
.end method

.method public abstract openAddFriendRequestDialog(Landroid/content/Context;Lcom/product/android/commonInterface/contact/OapUser;)V
.end method

.method public abstract searchFilterContracByKey(JIILjava/lang/String;Ljava/util/ArrayList;)Ljava/util/List;
.signature "(JIILjava/lang/String;Ljava/util/ArrayList<Ljava/lang/Long;>;)Ljava/util/List<Lcom/product/android/commonInterface/chat/SearchContract;>;"
.end method

.method public abstract showAppDialog(Lcom/product/android/commonInterface/contact/OapApp;Landroid/content/Context;)V
.end method

.method public abstract showGroupMessageReceiveSettingDialog(Landroid/content/Context;ILcom/product/android/commonInterface/chat/IGroupReceiveSettingListener;)V
.end method

.method public abstract showSendFlowerDialog(Landroid/content/Context;JLcom/product/android/commonInterface/weibo/ISendFlowerDialogListener;)V
.end method

.method public abstract viewDetail(Landroid/content/Context;Lcom/product/android/commonInterface/chat/ErpInfo;)V
.end method
