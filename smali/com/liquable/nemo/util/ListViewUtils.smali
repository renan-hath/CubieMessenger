.class public Lcom/liquable/nemo/util/ListViewUtils;
.super Ljava/lang/Object;
.source "ListViewUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static existInVisibleItems(Landroid/widget/ListView;Lcom/liquable/util/Predicate;)Z
    .locals 5
    .param p0, "listView"    # Landroid/widget/ListView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ListView;",
            "Lcom/liquable/util/Predicate",
            "<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 11
    .local p1, "predicate":Lcom/liquable/util/Predicate;, "Lcom/liquable/util/Predicate<Ljava/lang/Object;>;"
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 12
    .local v1, "from":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    .line 13
    .local v0, "end":I
    move v2, v1

    .local v2, "i":I
    :goto_0
    if-gt v2, v0, :cond_1

    .line 14
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v3

    .line 15
    .local v3, "itemAtPosition":Ljava/lang/Object;
    invoke-interface {p1, v3}, Lcom/liquable/util/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 16
    const/4 v4, 0x1

    .line 19
    .end local v3    # "itemAtPosition":Ljava/lang/Object;
    :goto_1
    return v4

    .line 13
    .restart local v3    # "itemAtPosition":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 19
    .end local v3    # "itemAtPosition":Ljava/lang/Object;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method
