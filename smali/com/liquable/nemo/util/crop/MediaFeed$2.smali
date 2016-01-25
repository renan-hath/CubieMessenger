.class Lcom/liquable/nemo/util/crop/MediaFeed$2;
.super Ljava/lang/Object;
.source "MediaFeed.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/util/crop/MediaFeed;->showToast(Ljava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/util/crop/MediaFeed;

.field final synthetic val$centered:Z

.field final synthetic val$duration:I

.field final synthetic val$string:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/util/crop/MediaFeed;Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/util/crop/MediaFeed;

    .prologue
    .line 906
    iput-object p1, p0, Lcom/liquable/nemo/util/crop/MediaFeed$2;->this$0:Lcom/liquable/nemo/util/crop/MediaFeed;

    iput-object p2, p0, Lcom/liquable/nemo/util/crop/MediaFeed$2;->val$string:Ljava/lang/String;

    iput p3, p0, Lcom/liquable/nemo/util/crop/MediaFeed$2;->val$duration:I

    iput-boolean p4, p0, Lcom/liquable/nemo/util/crop/MediaFeed$2;->val$centered:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 909
    iget-object v1, p0, Lcom/liquable/nemo/util/crop/MediaFeed$2;->this$0:Lcom/liquable/nemo/util/crop/MediaFeed;

    # getter for: Lcom/liquable/nemo/util/crop/MediaFeed;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/liquable/nemo/util/crop/MediaFeed;->access$400(Lcom/liquable/nemo/util/crop/MediaFeed;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 910
    iget-object v1, p0, Lcom/liquable/nemo/util/crop/MediaFeed$2;->this$0:Lcom/liquable/nemo/util/crop/MediaFeed;

    # getter for: Lcom/liquable/nemo/util/crop/MediaFeed;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/liquable/nemo/util/crop/MediaFeed;->access$400(Lcom/liquable/nemo/util/crop/MediaFeed;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/util/crop/MediaFeed$2;->val$string:Ljava/lang/String;

    iget v3, p0, Lcom/liquable/nemo/util/crop/MediaFeed$2;->val$duration:I

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 911
    .local v0, "toast":Landroid/widget/Toast;
    iget-boolean v1, p0, Lcom/liquable/nemo/util/crop/MediaFeed$2;->val$centered:Z

    if-eqz v1, :cond_0

    .line 912
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 914
    :cond_0
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 916
    .end local v0    # "toast":Landroid/widget/Toast;
    :cond_1
    return-void
.end method
