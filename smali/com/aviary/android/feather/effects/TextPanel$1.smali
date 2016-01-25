.class Lcom/aviary/android/feather/effects/TextPanel$1;
.super Lcom/aviary/android/feather/effects/TextPanel$MyTextWatcher;
.source "TextPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/effects/TextPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/effects/TextPanel;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/effects/TextPanel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aviary/android/feather/effects/TextPanel;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/aviary/android/feather/effects/TextPanel$1;->this$0:Lcom/aviary/android/feather/effects/TextPanel;

    invoke-direct {p0, p1}, Lcom/aviary/android/feather/effects/TextPanel$MyTextWatcher;-><init>(Lcom/aviary/android/feather/effects/TextPanel;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TextPanel$1;->this$0:Lcom/aviary/android/feather/effects/TextPanel;

    iget-object v0, v0, Lcom/aviary/android/feather/effects/TextPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "afterTextChanged"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TextPanel$1;->this$0:Lcom/aviary/android/feather/effects/TextPanel;

    iget-object v0, v0, Lcom/aviary/android/feather/effects/TextPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "beforeTextChanged"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 85
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 89
    iget-object v1, p0, Lcom/aviary/android/feather/effects/TextPanel$1;->view:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aviary/android/feather/effects/TextPanel$1;->view:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    invoke-virtual {v1}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getContent()Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;

    move-result-object v1

    instance-of v1, v1, Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/aviary/android/feather/effects/TextPanel$1;->view:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    invoke-virtual {v1}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getContent()Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;

    .line 92
    .local v0, "editable":Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;
    invoke-interface {v0}, Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;->isEditing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 100
    .end local v0    # "editable":Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;
    :cond_0
    :goto_0
    return-void

    .line 94
    .restart local v0    # "editable":Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method
