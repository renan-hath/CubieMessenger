.class Lcom/liquable/nemo/chat/paint/PaintView$1;
.super Ljava/lang/Object;
.source "PaintView.java"

# interfaces
.implements Lcom/liquable/nemo/chat/paint/OnPropertyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/chat/paint/PaintView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/liquable/nemo/chat/paint/OnPropertyListener",
        "<",
        "Lcom/liquable/nemo/chat/paint/PaintTextProperty;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/paint/PaintView;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/paint/PaintView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/paint/PaintView;

    .prologue
    .line 408
    iput-object p1, p0, Lcom/liquable/nemo/chat/paint/PaintView$1;->this$0:Lcom/liquable/nemo/chat/paint/PaintView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProperty(Lcom/liquable/nemo/chat/paint/PaintTextProperty;)V
    .locals 0
    .param p1, "property"    # Lcom/liquable/nemo/chat/paint/PaintTextProperty;

    .prologue
    .line 412
    return-void
.end method

.method public bridge synthetic onProperty(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 408
    check-cast p1, Lcom/liquable/nemo/chat/paint/PaintTextProperty;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/paint/PaintView$1;->onProperty(Lcom/liquable/nemo/chat/paint/PaintTextProperty;)V

    return-void
.end method
