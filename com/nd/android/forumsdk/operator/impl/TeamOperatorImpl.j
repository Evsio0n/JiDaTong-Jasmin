.bytecode 50.0
.class public synchronized com/nd/android/forumsdk/operator/impl/TeamOperatorImpl
.super java/lang/Object
.implements com/nd/android/forumsdk/operator/ITeamOperator

.field 'teamCom' Lcom/nd/android/forumsdk/business/com/http/ITeamCom;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aconst_null
putfield com/nd/android/forumsdk/operator/impl/TeamOperatorImpl/teamCom Lcom/nd/android/forumsdk/business/com/http/ITeamCom;
aload 0
invokestatic com/nd/android/forumsdk/business/com/ForumHttpFactory/getInstance()Lcom/nd/android/forumsdk/business/com/ForumHttpFactory;
invokevirtual com/nd/android/forumsdk/business/com/ForumHttpFactory/getTeamCom()Lcom/nd/android/forumsdk/business/com/http/ITeamCom;
putfield com/nd/android/forumsdk/operator/impl/TeamOperatorImpl/teamCom Lcom/nd/android/forumsdk/business/com/http/ITeamCom;
return
.limit locals 1
.limit stack 2
.end method

.method public addCategory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nd/android/forumsdk/business/bean/result/CategoryInfoBean;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/CategoryInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/result/CategoryInfoBean/<init>()V
astore 4
L0:
aload 0
getfield com/nd/android/forumsdk/operator/impl/TeamOperatorImpl/teamCom Lcom/nd/android/forumsdk/business/com/http/ITeamCom;
aload 1
aload 2
aload 3
invokeinterface com/nd/android/forumsdk/business/com/http/ITeamCom/addCategory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nd/android/forumsdk/business/bean/result/CategoryInfoBean; 3
astore 1
L1:
aload 1
areturn
L2:
astore 1
aload 4
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/CategoryInfoBean/setResultCode(I)V
aload 4
aload 1
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/CategoryInfoBean/setResultMsg(Ljava/lang/String;)V
ldc "TeamOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "addCategory  -- resultCode : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual com/nd/android/forumsdk/business/bean/result/CategoryInfoBean/getResultCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " -- resultMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual com/nd/android/forumsdk/business/bean/result/CategoryInfoBean/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 4
areturn
.limit locals 5
.limit stack 4
.end method

.method public addTag(Ljava/lang/String;)Lcom/nd/android/forumsdk/business/bean/result/ResultTagInfoBean;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/ResultTagInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultTagInfoBean/<init>()V
astore 2
L0:
aload 0
getfield com/nd/android/forumsdk/operator/impl/TeamOperatorImpl/teamCom Lcom/nd/android/forumsdk/business/com/http/ITeamCom;
aload 1
invokeinterface com/nd/android/forumsdk/business/com/http/ITeamCom/addTag(Ljava/lang/String;)Lcom/nd/android/forumsdk/business/bean/result/ResultTagInfoBean; 1
astore 1
L1:
aload 1
areturn
L2:
astore 1
aload 2
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTagInfoBean/setResultCode(I)V
aload 2
aload 1
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTagInfoBean/setResultMsg(Ljava/lang/String;)V
ldc "TeamOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "addTag  -- resultCode : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTagInfoBean/getResultCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " -- resultMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTagInfoBean/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 2
areturn
.limit locals 3
.limit stack 3
.end method

.method public approvalCreate(JZLjava/lang/String;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/ForumResultBase
dup
invokespecial com/nd/android/forumsdk/business/bean/ForumResultBase/<init>()V
astore 5
L0:
aload 0
getfield com/nd/android/forumsdk/operator/impl/TeamOperatorImpl/teamCom Lcom/nd/android/forumsdk/business/com/http/ITeamCom;
lload 1
iload 3
aload 4
invokeinterface com/nd/android/forumsdk/business/com/http/ITeamCom/approvalCreate(JZLjava/lang/String;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase; 4
astore 4
L1:
aload 4
areturn
L2:
astore 4
aload 5
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/setResultCode(I)V
aload 5
aload 4
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/setResultMsg(Ljava/lang/String;)V
ldc "TeamOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "approvalCreate  -- resultCode : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/getResultCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " -- resultMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 5
areturn
.limit locals 6
.limit stack 5
.end method

.method public createNewTeam(Ljava/lang/String;Ljava/lang/String;[J[JLjava/lang/String;)Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean/<init>()V
astore 6
L0:
aload 0
getfield com/nd/android/forumsdk/operator/impl/TeamOperatorImpl/teamCom Lcom/nd/android/forumsdk/business/com/http/ITeamCom;
aload 1
aload 2
aload 3
aload 4
aload 5
invokeinterface com/nd/android/forumsdk/business/com/http/ITeamCom/createNewTeam(Ljava/lang/String;Ljava/lang/String;[J[JLjava/lang/String;)Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean; 5
astore 1
L1:
aload 1
areturn
L2:
astore 1
aload 6
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean/setResultCode(I)V
aload 6
aload 1
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean/setResultMsg(Ljava/lang/String;)V
ldc "TeamOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "createNewTeam  -- resultCode : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 6
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean/getResultCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " -- resultMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 6
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 6
areturn
.limit locals 7
.limit stack 6
.end method

.method public deleteCategory(J)Lcom/nd/android/forumsdk/business/bean/result/CategoryInfoBean;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/CategoryInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/result/CategoryInfoBean/<init>()V
astore 3
L0:
aload 0
getfield com/nd/android/forumsdk/operator/impl/TeamOperatorImpl/teamCom Lcom/nd/android/forumsdk/business/com/http/ITeamCom;
lload 1
invokeinterface com/nd/android/forumsdk/business/com/http/ITeamCom/deleteCategory(J)Lcom/nd/android/forumsdk/business/bean/result/CategoryInfoBean; 2
astore 4
L1:
aload 4
areturn
L2:
astore 4
aload 3
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/CategoryInfoBean/setResultCode(I)V
aload 3
aload 4
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/CategoryInfoBean/setResultMsg(Ljava/lang/String;)V
ldc "TeamOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "deleteCategory  -- resultCode : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/CategoryInfoBean/getResultCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " -- resultMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/CategoryInfoBean/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 3
areturn
.limit locals 5
.limit stack 3
.end method

.method public deleteTag(J)Lcom/nd/android/forumsdk/business/bean/result/ResultTagInfoBean;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/ResultTagInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultTagInfoBean/<init>()V
astore 3
L0:
aload 0
getfield com/nd/android/forumsdk/operator/impl/TeamOperatorImpl/teamCom Lcom/nd/android/forumsdk/business/com/http/ITeamCom;
lload 1
invokeinterface com/nd/android/forumsdk/business/com/http/ITeamCom/deleteTag(J)Lcom/nd/android/forumsdk/business/bean/result/ResultTagInfoBean; 2
astore 4
L1:
aload 4
areturn
L2:
astore 4
aload 3
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTagInfoBean/setResultCode(I)V
aload 3
aload 4
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTagInfoBean/setResultMsg(Ljava/lang/String;)V
ldc "TeamOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "deleteTag  -- resultCode : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTagInfoBean/getResultCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " -- resultMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTagInfoBean/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 3
areturn
.limit locals 5
.limit stack 3
.end method

.method public doFocusOrNot(JZ)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/ForumResultBase
dup
invokespecial com/nd/android/forumsdk/business/bean/ForumResultBase/<init>()V
astore 4
L0:
aload 0
getfield com/nd/android/forumsdk/operator/impl/TeamOperatorImpl/teamCom Lcom/nd/android/forumsdk/business/com/http/ITeamCom;
lload 1
iload 3
invokeinterface com/nd/android/forumsdk/business/com/http/ITeamCom/doFocusOrNot(JZ)Lcom/nd/android/forumsdk/business/bean/ForumResultBase; 3
astore 5
L1:
aload 5
areturn
L2:
astore 5
aload 4
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/setResultCode(I)V
aload 4
aload 5
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/setResultMsg(Ljava/lang/String;)V
ldc "TeamOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "doFocusOrNot  -- resultCode : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/getResultCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " -- resultMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 4
areturn
.limit locals 6
.limit stack 4
.end method

.method public editTeamInfo(JLjava/lang/String;Ljava/lang/String;[J[JLjava/lang/String;)Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean/<init>()V
astore 8
L0:
aload 0
getfield com/nd/android/forumsdk/operator/impl/TeamOperatorImpl/teamCom Lcom/nd/android/forumsdk/business/com/http/ITeamCom;
lload 1
aload 3
aload 4
aload 5
aload 6
aload 7
invokeinterface com/nd/android/forumsdk/business/com/http/ITeamCom/editTeamInfo(JLjava/lang/String;Ljava/lang/String;[J[JLjava/lang/String;)Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean; 7
astore 3
L1:
aload 3
areturn
L2:
astore 3
aload 8
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean/setResultCode(I)V
aload 8
aload 3
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean/setResultMsg(Ljava/lang/String;)V
ldc "TeamOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "editTeamInfo  -- resultCode : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 8
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean/getResultCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " -- resultMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 8
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 8
areturn
.limit locals 9
.limit stack 8
.end method

.method public getAllCategoryForTeam()Lcom/nd/android/forumsdk/business/bean/result/ResultGetTeamCategory;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/ResultGetTeamCategory
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultGetTeamCategory/<init>()V
astore 1
L0:
aload 0
getfield com/nd/android/forumsdk/operator/impl/TeamOperatorImpl/teamCom Lcom/nd/android/forumsdk/business/com/http/ITeamCom;
invokeinterface com/nd/android/forumsdk/business/com/http/ITeamCom/getAllCategoryForTeam()Lcom/nd/android/forumsdk/business/bean/result/ResultGetTeamCategory; 0
astore 2
L1:
aload 2
areturn
L2:
astore 2
aload 1
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetTeamCategory/setResultCode(I)V
aload 1
aload 2
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetTeamCategory/setResultMsg(Ljava/lang/String;)V
ldc "TeamOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getAllCategoryForTeam  -- resultCode : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetTeamCategory/getResultCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " -- resultMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetTeamCategory/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 1
areturn
.limit locals 3
.limit stack 3
.end method

.method public getAllTeamList(III)Lcom/nd/android/forumsdk/business/bean/result/ResultDetailTeamList;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/ResultDetailTeamList
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultDetailTeamList/<init>()V
astore 4
L0:
aload 0
getfield com/nd/android/forumsdk/operator/impl/TeamOperatorImpl/teamCom Lcom/nd/android/forumsdk/business/com/http/ITeamCom;
iload 1
iload 2
iload 3
invokeinterface com/nd/android/forumsdk/business/com/http/ITeamCom/getAllTeamList(III)Lcom/nd/android/forumsdk/business/bean/result/ResultDetailTeamList; 3
astore 5
L1:
aload 5
areturn
L2:
astore 5
aload 4
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultDetailTeamList/setResultCode(I)V
aload 4
aload 5
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultDetailTeamList/setResultMsg(Ljava/lang/String;)V
ldc "TeamOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getAllTeamList  -- resultCode : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultDetailTeamList/getResultCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " -- resultMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultDetailTeamList/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 4
areturn
.limit locals 6
.limit stack 4
.end method

.method public getHotTeam(JII)Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoList;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/<init>()V
astore 5
L0:
aload 0
getfield com/nd/android/forumsdk/operator/impl/TeamOperatorImpl/teamCom Lcom/nd/android/forumsdk/business/com/http/ITeamCom;
lload 1
iload 3
iload 4
invokeinterface com/nd/android/forumsdk/business/com/http/ITeamCom/getHotTeam(JII)Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoList; 4
astore 6
L1:
aload 6
areturn
L2:
astore 6
aload 5
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/setResultCode(I)V
aload 5
aload 6
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/setResultMsg(Ljava/lang/String;)V
ldc "TeamOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getHotTeam  -- resultCode : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/getResultCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " -- resultMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 5
areturn
.limit locals 7
.limit stack 5
.end method

.method public getMembers(JII)Lcom/nd/android/forumsdk/business/bean/result/ResultUserList;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/ResultUserList
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultUserList/<init>()V
astore 5
L0:
aload 0
getfield com/nd/android/forumsdk/operator/impl/TeamOperatorImpl/teamCom Lcom/nd/android/forumsdk/business/com/http/ITeamCom;
lload 1
iload 3
iload 4
invokeinterface com/nd/android/forumsdk/business/com/http/ITeamCom/getMembers(JII)Lcom/nd/android/forumsdk/business/bean/result/ResultUserList; 4
astore 6
L1:
aload 6
areturn
L2:
astore 6
aload 5
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultUserList/setResultCode(I)V
aload 5
aload 6
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultUserList/setResultMsg(Ljava/lang/String;)V
ldc "TeamOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getMembers  -- resultCode : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultUserList/getResultCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " -- resultMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultUserList/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 5
areturn
.limit locals 7
.limit stack 5
.end method

.method public getMyFocusTeam(II)Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoList;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/<init>()V
astore 3
L0:
aload 0
getfield com/nd/android/forumsdk/operator/impl/TeamOperatorImpl/teamCom Lcom/nd/android/forumsdk/business/com/http/ITeamCom;
iload 1
iload 2
invokeinterface com/nd/android/forumsdk/business/com/http/ITeamCom/getMyFocusTeam(II)Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoList; 2
astore 4
L1:
aload 4
areturn
L2:
astore 4
aload 3
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/setResultCode(I)V
aload 3
aload 4
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/setResultMsg(Ljava/lang/String;)V
ldc "TeamOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getMyFocusTeam  -- resultCode : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/getResultCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " -- resultMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 3
areturn
.limit locals 5
.limit stack 3
.end method

.method public getMyTeam(II)Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoList;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/<init>()V
astore 3
L0:
aload 0
getfield com/nd/android/forumsdk/operator/impl/TeamOperatorImpl/teamCom Lcom/nd/android/forumsdk/business/com/http/ITeamCom;
iload 1
iload 2
invokeinterface com/nd/android/forumsdk/business/com/http/ITeamCom/getMyTeam(II)Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoList; 2
astore 4
L1:
aload 4
areturn
L2:
astore 4
aload 3
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/setResultCode(I)V
aload 3
aload 4
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/setResultMsg(Ljava/lang/String;)V
ldc "TeamOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getMyTeam  -- resultCode : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/getResultCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " -- resultMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 3
areturn
.limit locals 5
.limit stack 3
.end method

.method public getTags(II)Lcom/nd/android/forumsdk/business/bean/result/ResultGetTags;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/ResultGetTags
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultGetTags/<init>()V
astore 3
L0:
aload 0
getfield com/nd/android/forumsdk/operator/impl/TeamOperatorImpl/teamCom Lcom/nd/android/forumsdk/business/com/http/ITeamCom;
iload 1
iload 2
invokeinterface com/nd/android/forumsdk/business/com/http/ITeamCom/getTags(II)Lcom/nd/android/forumsdk/business/bean/result/ResultGetTags; 2
astore 4
L1:
aload 4
areturn
L2:
astore 4
aload 3
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetTags/setResultCode(I)V
aload 3
aload 4
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetTags/setResultMsg(Ljava/lang/String;)V
ldc "TeamOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getTags  -- resultCode : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetTags/getResultCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " -- resultMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetTags/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 3
areturn
.limit locals 5
.limit stack 3
.end method

.method public getTeamInfo(J)Lcom/nd/android/forumsdk/business/bean/result/ResultGetTeamInfo;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/ResultGetTeamInfo
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultGetTeamInfo/<init>()V
astore 3
L0:
aload 0
getfield com/nd/android/forumsdk/operator/impl/TeamOperatorImpl/teamCom Lcom/nd/android/forumsdk/business/com/http/ITeamCom;
lload 1
invokeinterface com/nd/android/forumsdk/business/com/http/ITeamCom/getTeamInfo(J)Lcom/nd/android/forumsdk/business/bean/result/ResultGetTeamInfo; 2
astore 4
L1:
aload 4
areturn
L2:
astore 4
aload 3
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetTeamInfo/setResultCode(I)V
aload 3
aload 4
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetTeamInfo/setResultMsg(Ljava/lang/String;)V
ldc "TeamOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getTeamInfo  -- resultCode : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetTeamInfo/getResultCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " -- resultMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetTeamInfo/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 3
areturn
.limit locals 5
.limit stack 3
.end method

.method public getTeamListByCategory(JII)Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoList;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/<init>()V
astore 5
L0:
aload 0
getfield com/nd/android/forumsdk/operator/impl/TeamOperatorImpl/teamCom Lcom/nd/android/forumsdk/business/com/http/ITeamCom;
lload 1
iload 3
iload 4
invokeinterface com/nd/android/forumsdk/business/com/http/ITeamCom/getTeamListByCategory(JII)Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoList; 4
astore 6
L1:
aload 6
areturn
L2:
astore 6
aload 5
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/setResultCode(I)V
aload 5
aload 6
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/setResultMsg(Ljava/lang/String;)V
ldc "TeamOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getTeamListByCategory  -- resultCode : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/getResultCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " -- resultMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 5
areturn
.limit locals 7
.limit stack 5
.end method

.method public searchTeamByKeyWord(Ljava/lang/String;II)Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoList;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/<init>()V
astore 4
L0:
aload 0
getfield com/nd/android/forumsdk/operator/impl/TeamOperatorImpl/teamCom Lcom/nd/android/forumsdk/business/com/http/ITeamCom;
aload 1
iload 2
iload 3
invokeinterface com/nd/android/forumsdk/business/com/http/ITeamCom/searchTeamByKeyWord(Ljava/lang/String;II)Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoList; 3
astore 1
L1:
aload 1
areturn
L2:
astore 1
aload 4
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/setResultCode(I)V
aload 4
aload 1
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/setResultMsg(Ljava/lang/String;)V
ldc "TeamOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "searchTeamByTeamName  -- resultCode : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/getResultCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " -- resultMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 4
areturn
.limit locals 5
.limit stack 4
.end method

.method public updateCategory(Lcom/nd/android/forumsdk/business/bean/result/CategoryInfoBean;)Lcom/nd/android/forumsdk/business/bean/result/CategoryInfoBean;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/CategoryInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/result/CategoryInfoBean/<init>()V
astore 2
L0:
aload 0
getfield com/nd/android/forumsdk/operator/impl/TeamOperatorImpl/teamCom Lcom/nd/android/forumsdk/business/com/http/ITeamCom;
aload 1
invokeinterface com/nd/android/forumsdk/business/com/http/ITeamCom/updateCategory(Lcom/nd/android/forumsdk/business/bean/result/CategoryInfoBean;)Lcom/nd/android/forumsdk/business/bean/result/CategoryInfoBean; 1
astore 1
L1:
aload 1
areturn
L2:
astore 1
aload 2
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/CategoryInfoBean/setResultCode(I)V
aload 2
aload 1
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/CategoryInfoBean/setResultMsg(Ljava/lang/String;)V
ldc "TeamOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "updateCategory  -- resultCode : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual com/nd/android/forumsdk/business/bean/result/CategoryInfoBean/getResultCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " -- resultMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual com/nd/android/forumsdk/business/bean/result/CategoryInfoBean/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 2
areturn
.limit locals 3
.limit stack 3
.end method

.method public updateTag(Lcom/nd/android/forumsdk/business/bean/structure/TagInfoBean;)Lcom/nd/android/forumsdk/business/bean/result/ResultTagInfoBean;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/ResultTagInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultTagInfoBean/<init>()V
astore 2
L0:
aload 0
getfield com/nd/android/forumsdk/operator/impl/TeamOperatorImpl/teamCom Lcom/nd/android/forumsdk/business/com/http/ITeamCom;
aload 1
invokeinterface com/nd/android/forumsdk/business/com/http/ITeamCom/updateTag(Lcom/nd/android/forumsdk/business/bean/structure/TagInfoBean;)Lcom/nd/android/forumsdk/business/bean/result/ResultTagInfoBean; 1
astore 1
L1:
aload 1
areturn
L2:
astore 1
aload 2
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTagInfoBean/setResultCode(I)V
aload 2
aload 1
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTagInfoBean/setResultMsg(Ljava/lang/String;)V
ldc "TeamOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "updateTag  -- resultCode : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTagInfoBean/getResultCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " -- resultMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTagInfoBean/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 2
areturn
.limit locals 3
.limit stack 3
.end method
