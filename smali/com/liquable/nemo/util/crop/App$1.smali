.class Lcom/liquable/nemo/util/crop/App$1;
.super Ljava/lang/Object;
.source "App.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/util/crop/App;->showToast(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/util/crop/App;

.field final synthetic val$duration:I

.field final synthetic val$string:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/util/crop/App;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/util/crop/App;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/liquable/nemo/util/crop/App$1;->this$0:Lcom/liquable/nemo/util/crop/App;

    iput-object p2, p0, Lcom/liquable/nemo/util/crop/App$1;->val$string:Ljava/lang/String;

    iput p3, p0, Lcom/liquable/nemo/util/crop/App$1;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/App$1;->this$0:Lcom/liquable/nemo/util/crop/App;

    # getter for: Lcom/liquable/nemo/util/crop/App;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/liquable/nemo/util/crop/App;->access$000(Lcom/liquable/nemo/util/crop/App;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/util/crop/App$1;->val$string:Ljava/lang/String;

    iget v2, p0, Lcom/liquable/nemo/util/crop/App$1;->val$duration:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 110
    return-void
.end method
