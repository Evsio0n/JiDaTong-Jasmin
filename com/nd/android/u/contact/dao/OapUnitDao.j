.bytecode 50.0
.class public abstract interface com/nd/android/u/contact/dao/OapUnitDao
.super java/lang/Object

.method public abstract deleteUnit(I)Z
.end method

.method public abstract deleteUnits()Z
.end method

.method public abstract getMaxUpdatetime()I
.end method

.method public abstract insertUnit(Lcom/nd/android/u/contact/dataStructure/OapUnit;)J
.end method

.method public abstract insertUnits(Ljava/util/List;)I
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapUnit;>;)I"
.end method

.method public abstract isExists(I)Z
.end method

.method public abstract searchUnit()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapUnit;>;"
.end method

.method public abstract searchUnitByLevel(I)Ljava/util/List;
.signature "(I)Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapUnit;>;"
.end method

.method public abstract searchUnitByParentId(I)Ljava/util/List;
.signature "(I)Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapUnit;>;"
.end method

.method public abstract searchUnitByUnitid(Landroid/database/sqlite/SQLiteDatabase;I)Ljava/util/List;
.signature "(Landroid/database/sqlite/SQLiteDatabase;I)Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapUnit;>;"
.end method

.method public abstract searcheUnitUsercount(I)I
.end method

.method public abstract updateUnit(Lcom/nd/android/u/contact/dataStructure/OapUnit;)V
.end method

.method public abstract updateUsercount(I)V
.end method
