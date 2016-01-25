.class Lcom/liquable/nemo/regist/SelectMyAccountIconActivity$3;
.super Ljava/lang/Object;
.source "SelectMyAccountIconActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;->onLoggedInCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity$3;->this$0:Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity$3;->this$0:Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;

    # invokes: Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;->onOK()V
    invoke-static {v0}, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;->access$200(Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;)V

    .line 136
    return-void
.end method
