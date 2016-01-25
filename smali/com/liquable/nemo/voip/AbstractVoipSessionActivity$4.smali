.class Lcom/liquable/nemo/voip/AbstractVoipSessionActivity$4;
.super Ljava/lang/Object;
.source "AbstractVoipSessionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->onLoggedInCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity$4;->this$0:Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 285
    iget-object v0, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity$4;->this$0:Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;

    invoke-virtual {v0}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->finish()V

    .line 286
    return-void
.end method
