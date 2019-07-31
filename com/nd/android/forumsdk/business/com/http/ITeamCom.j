.bytecode 50.0
.class public abstract interface com/nd/android/forumsdk/business/com/http/ITeamCom
.super java/lang/Object

.method public abstract addCategory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nd/android/forumsdk/business/bean/result/CategoryInfoBean;
.end method

.method public abstract addTag(Ljava/lang/String;)Lcom/nd/android/forumsdk/business/bean/result/ResultTagInfoBean;
.end method

.method public abstract approvalCreate(JZLjava/lang/String;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
.end method

.method public abstract createNewTeam(Ljava/lang/String;Ljava/lang/String;[J[JLjava/lang/String;)Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean;
.end method

.method public abstract deleteCategory(J)Lcom/nd/android/forumsdk/business/bean/result/CategoryInfoBean;
.end method

.method public abstract deleteTag(J)Lcom/nd/android/forumsdk/business/bean/result/ResultTagInfoBean;
.end method

.method public abstract doFocusOrNot(JZ)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
.end method

.method public abstract editTeamInfo(JLjava/lang/String;Ljava/lang/String;[J[JLjava/lang/String;)Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean;
.end method

.method public abstract getAllCategoryForTeam()Lcom/nd/android/forumsdk/business/bean/result/ResultGetTeamCategory;
.end method

.method public abstract getAllTeamList(III)Lcom/nd/android/forumsdk/business/bean/result/ResultDetailTeamList;
.end method

.method public abstract getHotTeam(JII)Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoList;
.end method

.method public abstract getMembers(JII)Lcom/nd/android/forumsdk/business/bean/result/ResultUserList;
.end method

.method public abstract getMyFocusTeam(II)Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoList;
.end method

.method public abstract getMyTeam(II)Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoList;
.end method

.method public abstract getTags(II)Lcom/nd/android/forumsdk/business/bean/result/ResultGetTags;
.end method

.method public abstract getTeamInfo(J)Lcom/nd/android/forumsdk/business/bean/result/ResultGetTeamInfo;
.end method

.method public abstract getTeamListByCategory(JII)Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoList;
.end method

.method public abstract searchTeamByKeyWord(Ljava/lang/String;II)Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoList;
.end method

.method public abstract updateCategory(Lcom/nd/android/forumsdk/business/bean/result/CategoryInfoBean;)Lcom/nd/android/forumsdk/business/bean/result/CategoryInfoBean;
.end method

.method public abstract updateTag(Lcom/nd/android/forumsdk/business/bean/structure/TagInfoBean;)Lcom/nd/android/forumsdk/business/bean/result/ResultTagInfoBean;
.end method
