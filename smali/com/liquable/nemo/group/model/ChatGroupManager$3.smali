.class Lcom/liquable/nemo/group/model/ChatGroupManager$3;
.super Ljava/lang/Object;
.source "ChatGroupManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/group/model/ChatGroupManager;->listMostActiveMembers(Ljava/lang/String;)Ljava/util/List;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/group/model/ChatGroupManager;

.field final synthetic val$activeCounts:Ljava/util/concurrent/ConcurrentMap;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/group/model/ChatGroupManager;Ljava/util/concurrent/ConcurrentMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/group/model/ChatGroupManager;

    .prologue
    .line 400
    iput-object p1, p0, Lcom/liquable/nemo/group/model/ChatGroupManager$3;->this$0:Lcom/liquable/nemo/group/model/ChatGroupManager;

    iput-object p2, p0, Lcom/liquable/nemo/group/model/ChatGroupManager$3;->val$activeCounts:Ljava/util/concurrent/ConcurrentMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 400
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/liquable/nemo/group/model/ChatGroupManager$3;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "m1"    # Ljava/lang/String;
    .param p2, "m2"    # Ljava/lang/String;

    .prologue
    .line 404
    iget-object v0, p0, Lcom/liquable/nemo/group/model/ChatGroupManager$3;->val$activeCounts:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/liquable/nemo/group/model/ChatGroupManager$3;->val$activeCounts:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    neg-int v0, v0

    return v0
.end method
