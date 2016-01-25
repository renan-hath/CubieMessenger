.class Lcom/liquable/nemo/main/MainForumView$5;
.super Ljava/lang/Object;
.source "MainForumView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/main/MainForumView;->setUserVisibleHint(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/main/MainForumView;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/main/MainForumView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/main/MainForumView;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/liquable/nemo/main/MainForumView$5;->this$0:Lcom/liquable/nemo/main/MainForumView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/liquable/nemo/main/MainForumView$5;->this$0:Lcom/liquable/nemo/main/MainForumView;

    invoke-virtual {v0}, Lcom/liquable/nemo/main/MainForumView;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    :goto_0
    return-void

    .line 247
    :cond_0
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Pref;->setShowCaseForum(Z)V

    .line 248
    iget-object v0, p0, Lcom/liquable/nemo/main/MainForumView$5;->this$0:Lcom/liquable/nemo/main/MainForumView;

    # invokes: Lcom/liquable/nemo/main/MainForumView;->shouldShowTutorial()V
    invoke-static {v0}, Lcom/liquable/nemo/main/MainForumView;->access$400(Lcom/liquable/nemo/main/MainForumView;)V

    goto :goto_0
.end method
