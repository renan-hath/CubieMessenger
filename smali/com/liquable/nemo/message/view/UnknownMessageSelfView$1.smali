.class Lcom/liquable/nemo/message/view/UnknownMessageSelfView$1;
.super Ljava/lang/Object;
.source "UnknownMessageSelfView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/message/view/UnknownMessageSelfView;->initBubbleBody(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/message/view/UnknownMessageSelfView;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/message/view/UnknownMessageSelfView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/message/view/UnknownMessageSelfView;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/liquable/nemo/message/view/UnknownMessageSelfView$1;->this$0:Lcom/liquable/nemo/message/view/UnknownMessageSelfView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "paramView"    # Landroid/view/View;

    .prologue
    .line 28
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    sget-object v2, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->UNKNOWN_MESSAGE:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    .line 29
    invoke-virtual {v2}, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->getBitlyUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 30
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/liquable/nemo/message/view/UnknownMessageSelfView$1;->this$0:Lcom/liquable/nemo/message/view/UnknownMessageSelfView;

    iget-object v1, v1, Lcom/liquable/nemo/message/view/UnknownMessageSelfView;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 31
    return-void
.end method
