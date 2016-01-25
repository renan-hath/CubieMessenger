.class Lcom/liquable/nemo/chat/widget/InputMessageWidget$1;
.super Ljava/lang/Object;
.source "InputMessageWidget.java"

# interfaces
.implements Lcom/liquable/nemo/chat/widget/InputMessageWidget$OnSecretModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/chat/widget/InputMessageWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/widget/InputMessageWidget;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/widget/InputMessageWidget;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget$1;->this$0:Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSecretModeChanged(Z)V
    .locals 0
    .param p1, "isSecret"    # Z

    .prologue
    .line 108
    return-void
.end method
