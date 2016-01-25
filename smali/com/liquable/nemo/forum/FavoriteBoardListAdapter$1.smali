.class Lcom/liquable/nemo/forum/FavoriteBoardListAdapter$1;
.super Ljava/lang/Object;
.source "FavoriteBoardListAdapter.java"

# interfaces
.implements Lcom/liquable/util/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/forum/FavoriteBoardListAdapter;->broadcastUnreadCountChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/liquable/util/Predicate",
        "<",
        "Lcom/liquable/nemo/forum/model/board/ForumBoard;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/forum/FavoriteBoardListAdapter;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/forum/FavoriteBoardListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/forum/FavoriteBoardListAdapter;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/liquable/nemo/forum/FavoriteBoardListAdapter$1;->this$0:Lcom/liquable/nemo/forum/FavoriteBoardListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/liquable/nemo/forum/model/board/ForumBoard;)Z
    .locals 1
    .param p1, "input"    # Lcom/liquable/nemo/forum/model/board/ForumBoard;

    .prologue
    .line 28
    invoke-virtual {p1}, Lcom/liquable/nemo/forum/model/board/ForumBoard;->hasNewContent()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 25
    check-cast p1, Lcom/liquable/nemo/forum/model/board/ForumBoard;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/FavoriteBoardListAdapter$1;->apply(Lcom/liquable/nemo/forum/model/board/ForumBoard;)Z

    move-result v0

    return v0
.end method
