.bytecode 50.0
.class public abstract interface com/nd/android/u/contact/dao/OapDepartDao
.super java/lang/Object

.method public abstract deleteDepart(II)Z
.end method

.method public abstract deleteDeparts()Z
.end method

.method public abstract deleteDeparts(I)Z
.end method

.method public abstract getMaxUpdatetimeByDept(I)I
.end method

.method public abstract getMaxUpdatetimeByUnit(I)I
.end method

.method public abstract insertDepart(Ljava/util/List;)I
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapDepart;>;)I"
.end method

.method public abstract insertDepart(Lcom/nd/android/u/contact/dataStructure/OapDepart;)J
.end method

.method public abstract isExists(II)Z
.end method

.method public abstract isExists(J)Z
.end method

.method public abstract searchDepartByDeptid(I)Lcom/nd/android/u/contact/dataStructure/OapDepart;
.end method

.method public abstract searchDepartByName(Ljava/lang/String;)Ljava/util/List;
.signature "(Ljava/lang/String;)Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapDepart;>;"
.end method

.method public abstract searchDepartGid()Ljava/lang/String;
.end method

.method public abstract searchDepartlist(II)Ljava/util/List;
.signature "(II)Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapDepart;>;"
.end method

.method public abstract searchDeparts()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapDepart;>;"
.end method

.method public abstract searchDeparts(I)Ljava/util/List;
.signature "(I)Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapDepart;>;"
.end method

.method public abstract searchDeparts(II)Ljava/util/List;
.signature "(II)Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapDepart;>;"
.end method

.method public abstract searchDeparts(Landroid/database/sqlite/SQLiteDatabase;I)Ljava/util/List;
.signature "(Landroid/database/sqlite/SQLiteDatabase;I)Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapDepart;>;"
.end method

.method public abstract searchSubDepartsByParentid(I)Ljava/util/List;
.signature "(I)Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapDepart;>;"
.end method

.method public abstract updateDepart(Lcom/nd/android/u/contact/dataStructure/OapDepart;)V
.end method

.method public abstract updateDepart(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapDepart;>;)V"
.end method
