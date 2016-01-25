.class Lcom/liquable/nemo/group/model/ChatGroupManager$2;
.super Ljava/lang/Object;
.source "ChatGroupManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/group/model/ChatGroupManager;->filterByOneToOneOrNot(Ljava/util/List;Z)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/liquable/nemo/group/model/ChatGroup;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/group/model/ChatGroupManager;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/group/model/ChatGroupManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/group/model/ChatGroupManager;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/liquable/nemo/group/model/ChatGroupManager$2;->this$0:Lcom/liquable/nemo/group/model/ChatGroupManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/liquable/nemo/group/model/ChatGroup;Lcom/liquable/nemo/group/model/ChatGroup;)I
    .locals 2
    .param p1, "lhs"    # Lcom/liquable/nemo/group/model/ChatGroup;
    .param p2, "rhs"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    .line 297
    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/liquable/nemo/group/model/ChatGroup;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 294
    check-cast p1, Lcom/liquable/nemo/group/model/ChatGroup;

    check-cast p2, Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {p0, p1, p2}, Lcom/liquable/nemo/group/model/ChatGroupManager$2;->compare(Lcom/liquable/nemo/group/model/ChatGroup;Lcom/liquable/nemo/group/model/ChatGroup;)I

    move-result v0

    return v0
.end method
