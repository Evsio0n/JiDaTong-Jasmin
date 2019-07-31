.bytecode 50.0
.class public synchronized com/nd/schoollife/controller/operator/impl/TeamOperatorImpl
.super com/nd/schoollife/controller/operator/impl/BaseOperator
.implements com/nd/schoollife/controller/operator/ITeamOperator

.field 'mOperator' Lcom/nd/android/forumsdk/operator/ITeamOperator;

.field private 'resultTeamInfoBean' Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean;

.method public <init>()V
aload 0
invokespecial com/nd/schoollife/controller/operator/impl/BaseOperator/<init>()V
aload 0
new com/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean/<init>()V
putfield com/nd/schoollife/controller/operator/impl/TeamOperatorImpl/resultTeamInfoBean Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean;
aload 0
invokestatic com/nd/android/forumsdk/ForumFactory/getInstance()Lcom/nd/android/forumsdk/ForumFactory;
invokevirtual com/nd/android/forumsdk/ForumFactory/getTeamOperator()Lcom/nd/android/forumsdk/operator/ITeamOperator;
putfield com/nd/schoollife/controller/operator/impl/TeamOperatorImpl/mOperator Lcom/nd/android/forumsdk/operator/ITeamOperator;
return
.limit locals 1
.limit stack 3
.end method

.method public createNewTeam(Ljava/lang/String;Ljava/lang/String;[J[JLjava/lang/String;)Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean;
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
aload 0
getfield com/nd/schoollife/controller/operator/impl/TeamOperatorImpl/resultTeamInfoBean Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean;
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean/setResultCode(I)V
aload 0
getfield com/nd/schoollife/controller/operator/impl/TeamOperatorImpl/resultTeamInfoBean Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean;
ldc "\u56fe\u7247\u5730\u5740\u4e0d\u80fd\u4e3a\u7a7a"
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean/setResultMsg(Ljava/lang/String;)V
aload 0
getfield com/nd/schoollife/controller/operator/impl/TeamOperatorImpl/resultTeamInfoBean Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean;
areturn
L0:
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L1
aload 0
getfield com/nd/schoollife/controller/operator/impl/TeamOperatorImpl/resultTeamInfoBean Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean;
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean/setResultCode(I)V
aload 0
getfield com/nd/schoollife/controller/operator/impl/TeamOperatorImpl/resultTeamInfoBean Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean;
ldc "\u5c0f\u7ec4\u540d\u79f0\u4e0d\u80fd\u4e3a\u7a7a"
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean/setResultMsg(Ljava/lang/String;)V
aload 0
getfield com/nd/schoollife/controller/operator/impl/TeamOperatorImpl/resultTeamInfoBean Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean;
areturn
L1:
aload 2
ldc "[a-zA-Z0-9_\u4e00-\u9fa5]*"
invokevirtual java/lang/String/matches(Ljava/lang/String;)Z
ifne L2
aload 0
getfield com/nd/schoollife/controller/operator/impl/TeamOperatorImpl/resultTeamInfoBean Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean;
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean/setResultCode(I)V
aload 0
getfield com/nd/schoollife/controller/operator/impl/TeamOperatorImpl/resultTeamInfoBean Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean;
ldc "\u5c0f\u7ec4\u540d\u79f0\u957f\u5ea6\u8303\u56f4[1,30]\u5b57\uff0c\u5141\u8bb8\u6c49\u5b57\u3001\u6570\u5b57\u3001\u5b57\u6bcd\u3001\u4e0b\u5212\u7ebf"
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean/setResultMsg(Ljava/lang/String;)V
aload 0
getfield com/nd/schoollife/controller/operator/impl/TeamOperatorImpl/resultTeamInfoBean Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean;
areturn
L2:
aload 3
ifnull L3
aload 3
arraylength
ifgt L4
L3:
aload 0
getfield com/nd/schoollife/controller/operator/impl/TeamOperatorImpl/resultTeamInfoBean Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean;
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean/setResultCode(I)V
aload 0
getfield com/nd/schoollife/controller/operator/impl/TeamOperatorImpl/resultTeamInfoBean Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean;
ldc "\u5c0f\u7ec4\u5206\u7c7b\u4e0d\u80fd\u4e3a\u7a7a"
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean/setResultMsg(Ljava/lang/String;)V
aload 0
getfield com/nd/schoollife/controller/operator/impl/TeamOperatorImpl/resultTeamInfoBean Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean;
areturn
L4:
aload 4
ifnull L5
aload 4
arraylength
iconst_5
if_icmple L5
aload 0
getfield com/nd/schoollife/controller/operator/impl/TeamOperatorImpl/resultTeamInfoBean Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean;
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean/setResultCode(I)V
aload 0
getfield com/nd/schoollife/controller/operator/impl/TeamOperatorImpl/resultTeamInfoBean Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean;
ldc "\u6807\u7b7e\u957f\u5ea6\u4e0d\u80fd\u8d85\u8fc75"
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean/setResultMsg(Ljava/lang/String;)V
aload 0
getfield com/nd/schoollife/controller/operator/impl/TeamOperatorImpl/resultTeamInfoBean Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean;
areturn
L5:
aload 5
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L6
aload 0
getfield com/nd/schoollife/controller/operator/impl/TeamOperatorImpl/resultTeamInfoBean Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean;
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean/setResultCode(I)V
aload 0
getfield com/nd/schoollife/controller/operator/impl/TeamOperatorImpl/resultTeamInfoBean Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean;
ldc "\u7b80\u4ecb\u4e0d\u80fd\u4e3a\u7a7a"
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean/setResultMsg(Ljava/lang/String;)V
aload 0
getfield com/nd/schoollife/controller/operator/impl/TeamOperatorImpl/resultTeamInfoBean Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean;
areturn
L6:
aload 0
getfield com/nd/schoollife/controller/operator/impl/TeamOperatorImpl/context Landroid/content/Context;
aload 1
invokestatic com/nd/schoollife/ui/common/util/TeamUtils/uploadCreateTeamAvatar(Landroid/content/Context;Ljava/lang/String;)J
lstore 6
aload 0
aload 0
getfield com/nd/schoollife/controller/operator/impl/TeamOperatorImpl/mOperator Lcom/nd/android/forumsdk/operator/ITeamOperator;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
lload 6
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 2
aload 3
aload 4
aload 5
invokeinterface com/nd/android/forumsdk/operator/ITeamOperator/createNewTeam(Ljava/lang/String;Ljava/lang/String;[J[JLjava/lang/String;)Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean; 5
putfield com/nd/schoollife/controller/operator/impl/TeamOperatorImpl/resultTeamInfoBean Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean;
aload 0
getfield com/nd/schoollife/controller/operator/impl/TeamOperatorImpl/resultTeamInfoBean Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean;
areturn
.limit locals 8
.limit stack 7
.end method

.method public doFocusOrNot(JZ)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
new com/nd/android/forumsdk/business/bean/ForumResultBase
dup
invokespecial com/nd/android/forumsdk/business/bean/ForumResultBase/<init>()V
astore 4
lload 1
lconst_0
lcmp
ifgt L3
L0:
aload 4
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/setResultCode(I)V
aload 4
ldc "\u5c0f\u7ec4id\u4e0d\u80fd\u5c0f\u4e8e\u7b49\u4e8e0"
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/setResultMsg(Ljava/lang/String;)V
L1:
aload 4
areturn
L3:
aload 0
getfield com/nd/schoollife/controller/operator/impl/TeamOperatorImpl/mOperator Lcom/nd/android/forumsdk/operator/ITeamOperator;
lload 1
iload 3
invokeinterface com/nd/android/forumsdk/operator/ITeamOperator/doFocusOrNot(JZ)Lcom/nd/android/forumsdk/business/bean/ForumResultBase; 3
astore 5
L4:
aload 5
astore 4
L5:
aload 4
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
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/e(Ljava/lang/String;Ljava/lang/String;)V
goto L5
.limit locals 6
.limit stack 4
.end method

.method public editTeamInfo(JLjava/lang/String;Ljava/lang/String;[J[JLjava/lang/String;)Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean;
lload 1
lconst_0
lcmp
ifgt L0
aload 0
getfield com/nd/schoollife/controller/operator/impl/TeamOperatorImpl/resultTeamInfoBean Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean;
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean/setResultCode(I)V
aload 0
getfield com/nd/schoollife/controller/operator/impl/TeamOperatorImpl/resultTeamInfoBean Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean;
ldc "\u5c0f\u7ec4id\u4e0d\u80fd\u5c0f\u4e8e\u7b49\u4e8e0"
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean/setResultMsg(Ljava/lang/String;)V
aload 0
getfield com/nd/schoollife/controller/operator/impl/TeamOperatorImpl/resultTeamInfoBean Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean;
areturn
L0:
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L1
aload 0
getfield com/nd/schoollife/controller/operator/impl/TeamOperatorImpl/resultTeamInfoBean Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean;
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean/setResultCode(I)V
aload 0
getfield com/nd/schoollife/controller/operator/impl/TeamOperatorImpl/resultTeamInfoBean Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean;
ldc "\u56fe\u7247\u5730\u5740\u4e0d\u80fd\u4e3a\u7a7a"
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean/setResultMsg(Ljava/lang/String;)V
aload 0
getfield com/nd/schoollife/controller/operator/impl/TeamOperatorImpl/resultTeamInfoBean Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean;
areturn
L1:
aload 4
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L2
aload 4
ldc "[a-zA-Z0-9_\u4e00-\u9fa5]*"
invokevirtual java/lang/String/matches(Ljava/lang/String;)Z
ifne L2
aload 0
getfield com/nd/schoollife/controller/operator/impl/TeamOperatorImpl/resultTeamInfoBean Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean;
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean/setResultCode(I)V
aload 0
getfield com/nd/schoollife/controller/operator/impl/TeamOperatorImpl/resultTeamInfoBean Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean;
ldc "\u5c0f\u7ec4\u540d\u79f0\u957f\u5ea6\u8303\u56f4[1,30]\u5b57\uff0c\u5141\u8bb8\u6c49\u5b57\u3001\u6570\u5b57\u3001\u5b57\u6bcd\u3001\u4e0b\u5212\u7ebf"
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean/setResultMsg(Ljava/lang/String;)V
aload 0
getfield com/nd/schoollife/controller/operator/impl/TeamOperatorImpl/resultTeamInfoBean Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean;
areturn
L2:
aload 5
ifnull L3
aload 5
arraylength
ifgt L4
L3:
aload 0
getfield com/nd/schoollife/controller/operator/impl/TeamOperatorImpl/resultTeamInfoBean Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean;
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean/setResultCode(I)V
aload 0
getfield com/nd/schoollife/controller/operator/impl/TeamOperatorImpl/resultTeamInfoBean Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean;
ldc "\u5c0f\u7ec4\u4e0d\u80fd\u4e3a\u7a7a"
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean/setResultMsg(Ljava/lang/String;)V
aload 0
getfield com/nd/schoollife/controller/operator/impl/TeamOperatorImpl/resultTeamInfoBean Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean;
areturn
L4:
aload 6
ifnull L5
aload 6
arraylength
iconst_5
if_icmple L5
aload 0
getfield com/nd/schoollife/controller/operator/impl/TeamOperatorImpl/resultTeamInfoBean Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean;
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean/setResultCode(I)V
aload 0
getfield com/nd/schoollife/controller/operator/impl/TeamOperatorImpl/resultTeamInfoBean Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean;
ldc "\u6807\u7b7e\u957f\u5ea6\u4e0d\u80fd\u8d85\u8fc75"
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean/setResultMsg(Ljava/lang/String;)V
aload 0
getfield com/nd/schoollife/controller/operator/impl/TeamOperatorImpl/resultTeamInfoBean Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean;
areturn
L5:
aload 7
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L6
aload 0
getfield com/nd/schoollife/controller/operator/impl/TeamOperatorImpl/resultTeamInfoBean Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean;
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean/setResultCode(I)V
aload 0
getfield com/nd/schoollife/controller/operator/impl/TeamOperatorImpl/resultTeamInfoBean Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean;
ldc "\u7b80\u4ecb\u4e0d\u80fd\u4e3a\u7a7a"
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean/setResultMsg(Ljava/lang/String;)V
aload 0
getfield com/nd/schoollife/controller/operator/impl/TeamOperatorImpl/resultTeamInfoBean Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean;
areturn
L6:
aload 0
aload 0
getfield com/nd/schoollife/controller/operator/impl/TeamOperatorImpl/mOperator Lcom/nd/android/forumsdk/operator/ITeamOperator;
lload 1
aload 3
aload 4
aload 5
aload 6
aload 7
invokeinterface com/nd/android/forumsdk/operator/ITeamOperator/editTeamInfo(JLjava/lang/String;Ljava/lang/String;[J[JLjava/lang/String;)Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean; 7
putfield com/nd/schoollife/controller/operator/impl/TeamOperatorImpl/resultTeamInfoBean Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean;
aload 0
getfield com/nd/schoollife/controller/operator/impl/TeamOperatorImpl/resultTeamInfoBean Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean;
areturn
.limit locals 8
.limit stack 9
.end method

.method public getAllCategoryForTeam()Lcom/nd/android/forumsdk/business/bean/result/ResultGetTeamCategory;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/android/forumsdk/business/bean/result/ResultGetTeamCategory
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultGetTeamCategory/<init>()V
astore 1
L0:
aload 0
getfield com/nd/schoollife/controller/operator/impl/TeamOperatorImpl/mOperator Lcom/nd/android/forumsdk/operator/ITeamOperator;
invokeinterface com/nd/android/forumsdk/operator/ITeamOperator/getAllCategoryForTeam()Lcom/nd/android/forumsdk/business/bean/result/ResultGetTeamCategory; 0
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
ldc "getHotTeam  -- resultCode : "
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
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/e(Ljava/lang/String;Ljava/lang/String;)V
aload 1
areturn
.limit locals 3
.limit stack 3
.end method

.method public getHotTeam(JII)Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoList;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
.catch java/lang/Exception from L7 to L8 using L2
new com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/<init>()V
astore 5
lload 1
ldc2_w -1L
lcmp
ifeq L9
lload 1
lconst_0
lcmp
ifgt L9
L0:
aload 5
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/setResultCode(I)V
aload 5
ldc "\u955c\u50cf\u7248\u672c\u5c0f\u4e8e\u7b49\u4e8e0"
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/setResultMsg(Ljava/lang/String;)V
L1:
aload 5
areturn
L9:
iload 3
iconst_m1
if_icmpeq L10
iload 3
ifgt L10
L3:
aload 5
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/setResultCode(I)V
aload 5
ldc "\u9875\u7801\u53ea\u80fd\u5927\u4e8e0"
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/setResultMsg(Ljava/lang/String;)V
L4:
aload 5
areturn
L5:
aload 5
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/setResultCode(I)V
aload 5
ldc "\u6bcf\u9875\u7684\u6761\u6570\u53ea\u80fd\u5927\u4e8e0\u5c0f\u4e8e\u7b49\u4e8e100"
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/setResultMsg(Ljava/lang/String;)V
L6:
aload 5
areturn
L7:
aload 0
getfield com/nd/schoollife/controller/operator/impl/TeamOperatorImpl/mOperator Lcom/nd/android/forumsdk/operator/ITeamOperator;
lload 1
iload 3
iload 4
invokeinterface com/nd/android/forumsdk/operator/ITeamOperator/getHotTeam(JII)Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoList; 4
astore 6
L8:
aload 6
astore 5
L11:
aload 5
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
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/e(Ljava/lang/String;Ljava/lang/String;)V
goto L11
L10:
iload 4
iconst_m1
if_icmpeq L7
iload 4
ifle L5
iload 4
bipush 100
if_icmple L7
goto L5
.limit locals 7
.limit stack 5
.end method

.method public getMyFocusTeam(II)Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoList;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
.catch java/lang/Exception from L7 to L8 using L2
.catch java/lang/Exception from L9 to L10 using L2
.catch java/lang/Exception from L11 to L12 using L2
.catch java/lang/Exception from L13 to L14 using L2
.catch java/lang/Exception from L15 to L16 using L2
.catch java/lang/Exception from L17 to L18 using L2
.catch java/lang/Exception from L19 to L20 using L2
.catch java/lang/Exception from L21 to L22 using L2
.catch java/lang/Exception from L23 to L24 using L2
.catch java/lang/Exception from L25 to L26 using L2
new com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/<init>()V
astore 4
new com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/<init>()V
astore 6
iload 1
iconst_m1
if_icmpeq L27
iload 1
ifgt L27
aload 4
astore 3
L0:
aload 4
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/setResultCode(I)V
L1:
aload 4
astore 3
L3:
aload 4
ldc "\u9875\u7801\u53ea\u80fd\u5927\u4e8e0"
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/setResultMsg(Ljava/lang/String;)V
L4:
aload 4
areturn
L28:
aload 4
astore 3
L5:
aload 4
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/setResultCode(I)V
L6:
aload 4
astore 3
L7:
aload 4
ldc "\u6bcf\u9875\u7684\u6761\u6570\u53ea\u80fd\u5927\u4e8e0\u5c0f\u4e8e\u7b49\u4e8e100"
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/setResultMsg(Ljava/lang/String;)V
L8:
aload 4
areturn
L29:
iconst_0
istore 1
aload 4
astore 3
L9:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 7
L10:
iload 1
iconst_1
iadd
istore 2
aload 4
astore 3
L11:
aload 0
getfield com/nd/schoollife/controller/operator/impl/TeamOperatorImpl/mOperator Lcom/nd/android/forumsdk/operator/ITeamOperator;
iload 2
bipush 100
invokeinterface com/nd/android/forumsdk/operator/ITeamOperator/getMyFocusTeam(II)Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoList; 2
astore 5
L12:
aload 5
ifnull L24
aload 5
astore 3
L13:
aload 6
aload 5
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/getResultCode()I
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/setResultCode(I)V
L14:
aload 5
astore 3
L15:
aload 6
aload 5
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/getTotal()I
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/setTotal(I)V
L16:
aload 5
astore 3
L17:
aload 5
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/getList()Ljava/util/List;
ifnull L24
L18:
aload 5
astore 3
L19:
aload 7
aload 5
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/getList()Ljava/util/List;
invokevirtual java/util/ArrayList/addAll(Ljava/util/Collection;)Z
pop
L20:
iload 2
bipush 10
if_icmpge L24
aload 5
astore 3
L21:
aload 5
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/getList()Ljava/util/List;
invokeinterface java/util/List/size()I 0
bipush 100
if_icmpne L24
L22:
aload 5
astore 4
iload 2
istore 1
aload 5
astore 3
L23:
iload 2
bipush 100
imul
aload 5
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/getTotal()I
if_icmplt L10
L24:
aload 5
astore 3
L25:
aload 6
aload 7
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/setList(Ljava/util/List;)V
L26:
aload 6
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
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/e(Ljava/lang/String;Ljava/lang/String;)V
aload 6
areturn
L27:
iload 2
iconst_m1
if_icmpeq L29
iload 2
ifle L28
iload 2
bipush 100
if_icmple L29
goto L28
.limit locals 8
.limit stack 3
.end method

.method public getMyTeam(II)Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoList;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
.catch java/lang/Exception from L7 to L8 using L2
.catch java/lang/Exception from L9 to L10 using L2
.catch java/lang/Exception from L11 to L12 using L2
.catch java/lang/Exception from L13 to L14 using L2
.catch java/lang/Exception from L15 to L16 using L2
.catch java/lang/Exception from L17 to L18 using L2
.catch java/lang/Exception from L19 to L20 using L2
.catch java/lang/Exception from L21 to L22 using L2
.catch java/lang/Exception from L23 to L24 using L2
.catch java/lang/Exception from L25 to L26 using L2
new com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/<init>()V
astore 4
new com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/<init>()V
astore 6
iload 1
iconst_m1
if_icmpeq L27
iload 1
ifgt L27
aload 4
astore 3
L0:
aload 4
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/setResultCode(I)V
L1:
aload 4
astore 3
L3:
aload 4
ldc "\u9875\u7801\u53ea\u80fd\u5927\u4e8e0"
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/setResultMsg(Ljava/lang/String;)V
L4:
aload 4
areturn
L28:
aload 4
astore 3
L5:
aload 4
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/setResultCode(I)V
L6:
aload 4
astore 3
L7:
aload 4
ldc "\u6bcf\u9875\u7684\u6761\u6570\u53ea\u80fd\u5927\u4e8e0\u5c0f\u4e8e\u7b49\u4e8e100"
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/setResultMsg(Ljava/lang/String;)V
L8:
aload 4
areturn
L29:
iconst_0
istore 1
aload 4
astore 3
L9:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 7
L10:
iload 1
iconst_1
iadd
istore 2
aload 4
astore 3
L11:
aload 0
getfield com/nd/schoollife/controller/operator/impl/TeamOperatorImpl/mOperator Lcom/nd/android/forumsdk/operator/ITeamOperator;
iload 2
bipush 100
invokeinterface com/nd/android/forumsdk/operator/ITeamOperator/getMyTeam(II)Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoList; 2
astore 5
L12:
aload 5
ifnull L24
aload 5
astore 3
L13:
aload 6
aload 5
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/getResultCode()I
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/setResultCode(I)V
L14:
aload 5
astore 3
L15:
aload 6
aload 5
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/getTotal()I
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/setTotal(I)V
L16:
aload 5
astore 3
L17:
aload 5
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/getList()Ljava/util/List;
ifnull L24
L18:
aload 5
astore 3
L19:
aload 7
aload 5
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/getList()Ljava/util/List;
invokevirtual java/util/ArrayList/addAll(Ljava/util/Collection;)Z
pop
L20:
iload 2
bipush 10
if_icmpge L24
aload 5
astore 3
L21:
aload 5
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/getList()Ljava/util/List;
invokeinterface java/util/List/size()I 0
bipush 100
if_icmpne L24
L22:
aload 5
astore 4
iload 2
istore 1
aload 5
astore 3
L23:
iload 2
bipush 100
imul
aload 5
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/getTotal()I
if_icmplt L10
L24:
aload 5
astore 3
L25:
aload 6
aload 7
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/setList(Ljava/util/List;)V
L26:
aload 6
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
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/e(Ljava/lang/String;Ljava/lang/String;)V
aload 6
areturn
L27:
iload 2
iconst_m1
if_icmpeq L29
iload 2
ifle L28
iload 2
bipush 100
if_icmple L29
goto L28
.limit locals 8
.limit stack 3
.end method

.method public getTags(II)Lcom/nd/android/forumsdk/business/bean/result/ResultGetTags;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
new com/nd/android/forumsdk/business/bean/result/ResultGetTags
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultGetTags/<init>()V
astore 3
iload 1
iconst_m1
if_icmpeq L7
iload 1
ifgt L7
L0:
aload 3
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetTags/setResultCode(I)V
aload 3
ldc "\u9875\u7801\u53ea\u80fd\u5927\u4e8e0"
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetTags/setResultMsg(Ljava/lang/String;)V
L1:
aload 3
areturn
L3:
aload 3
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetTags/setResultCode(I)V
aload 3
ldc "\u6bcf\u9875\u7684\u6761\u6570\u53ea\u80fd\u5927\u4e8e0\u5c0f\u4e8e\u7b49\u4e8e100"
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetTags/setResultMsg(Ljava/lang/String;)V
L4:
aload 3
areturn
L5:
aload 0
getfield com/nd/schoollife/controller/operator/impl/TeamOperatorImpl/mOperator Lcom/nd/android/forumsdk/operator/ITeamOperator;
iload 1
iload 2
invokeinterface com/nd/android/forumsdk/operator/ITeamOperator/getTags(II)Lcom/nd/android/forumsdk/business/bean/result/ResultGetTags; 2
astore 4
L6:
aload 4
astore 3
L8:
aload 3
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
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/e(Ljava/lang/String;Ljava/lang/String;)V
goto L8
L7:
iload 2
iconst_m1
if_icmpeq L5
iload 2
ifle L3
iload 2
bipush 100
if_icmple L5
goto L3
.limit locals 5
.limit stack 3
.end method

.method public getTeamInfo(J)Lcom/nd/android/forumsdk/business/bean/result/ResultGetTeamInfo;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
new com/nd/android/forumsdk/business/bean/result/ResultGetTeamInfo
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultGetTeamInfo/<init>()V
astore 3
lload 1
lconst_0
lcmp
ifgt L3
L0:
aload 3
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetTeamInfo/setResultCode(I)V
aload 3
ldc "\u5c0f\u7ec4id\u4e0d\u80fd\u5c0f\u4e8e\u7b49\u4e8e0"
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetTeamInfo/setResultMsg(Ljava/lang/String;)V
L1:
aload 3
areturn
L3:
aload 0
getfield com/nd/schoollife/controller/operator/impl/TeamOperatorImpl/mOperator Lcom/nd/android/forumsdk/operator/ITeamOperator;
lload 1
invokeinterface com/nd/android/forumsdk/operator/ITeamOperator/getTeamInfo(J)Lcom/nd/android/forumsdk/business/bean/result/ResultGetTeamInfo; 2
astore 4
L4:
aload 4
astore 3
L5:
aload 3
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
ldc "getHotTeam  -- resultCode : "
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
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/e(Ljava/lang/String;Ljava/lang/String;)V
goto L5
.limit locals 5
.limit stack 4
.end method

.method public getTeamListByCategory(JII)Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoList;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
.catch java/lang/Exception from L7 to L8 using L2
new com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/<init>()V
astore 5
lload 1
lconst_0
lcmp
ifgt L9
L0:
aload 5
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/setResultCode(I)V
aload 5
ldc "\u7c7b\u522bid\u4e0d\u80fd\u5c0f\u4e8e\u7b49\u4e8e0"
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/setResultMsg(Ljava/lang/String;)V
L1:
aload 5
areturn
L9:
iload 3
iconst_m1
if_icmpeq L10
iload 3
ifgt L10
L3:
aload 5
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/setResultCode(I)V
aload 5
ldc "\u9875\u7801\u53ea\u80fd\u5927\u4e8e0"
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/setResultMsg(Ljava/lang/String;)V
L4:
aload 5
areturn
L5:
aload 5
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/setResultCode(I)V
aload 5
ldc "\u6bcf\u9875\u7684\u6761\u6570\u53ea\u80fd\u5927\u4e8e0\u5c0f\u4e8e\u7b49\u4e8e100"
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/setResultMsg(Ljava/lang/String;)V
L6:
aload 5
areturn
L7:
aload 0
getfield com/nd/schoollife/controller/operator/impl/TeamOperatorImpl/mOperator Lcom/nd/android/forumsdk/operator/ITeamOperator;
lload 1
iload 3
iload 4
invokeinterface com/nd/android/forumsdk/operator/ITeamOperator/getTeamListByCategory(JII)Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoList; 4
astore 6
L8:
aload 6
astore 5
L11:
aload 5
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
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/e(Ljava/lang/String;Ljava/lang/String;)V
goto L11
L10:
iload 4
iconst_m1
if_icmpeq L7
iload 4
ifle L5
iload 4
bipush 100
if_icmple L7
goto L5
.limit locals 7
.limit stack 5
.end method

.method public searchTeamByKeyWord(Ljava/lang/String;II)Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoList;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
.catch java/lang/Exception from L7 to L8 using L2
new com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/<init>()V
astore 4
L0:
aload 1
invokevirtual java/lang/String/trim()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L9
aload 4
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/setResultCode(I)V
aload 4
ldc "\u5173\u952e\u8bcd\u4e0d\u80fd\u4e3a\u7a7a"
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/setResultMsg(Ljava/lang/String;)V
L1:
aload 4
areturn
L9:
iload 2
iconst_m1
if_icmpeq L10
iload 2
ifgt L10
L3:
aload 4
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/setResultCode(I)V
aload 4
ldc "\u9875\u7801\u53ea\u80fd\u5927\u4e8e0"
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/setResultMsg(Ljava/lang/String;)V
L4:
aload 4
areturn
L5:
aload 4
sipush 999
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/setResultCode(I)V
aload 4
ldc "\u6bcf\u9875\u7684\u6761\u6570\u53ea\u80fd\u5927\u4e8e0\u5c0f\u4e8e\u7b49\u4e8e100"
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/setResultMsg(Ljava/lang/String;)V
L6:
aload 4
areturn
L7:
aload 0
getfield com/nd/schoollife/controller/operator/impl/TeamOperatorImpl/mOperator Lcom/nd/android/forumsdk/operator/ITeamOperator;
aload 1
iload 2
iload 3
invokeinterface com/nd/android/forumsdk/operator/ITeamOperator/searchTeamByKeyWord(Ljava/lang/String;II)Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoList; 3
astore 1
L8:
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
ldc "getTags  -- resultCode : "
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
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/e(Ljava/lang/String;Ljava/lang/String;)V
aload 4
astore 1
goto L8
L10:
iload 3
iconst_m1
if_icmpeq L7
iload 3
ifle L5
iload 3
bipush 100
if_icmple L7
goto L5
.limit locals 5
.limit stack 4
.end method
