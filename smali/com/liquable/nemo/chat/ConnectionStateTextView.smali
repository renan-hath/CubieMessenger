.class public Lcom/liquable/nemo/chat/ConnectionStateTextView;
.super Lcom/liquable/nemo/widget/ExpandableTextView;
.source "ConnectionStateTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/widget/ExpandableTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    return-void
.end method


# virtual methods
.method public show(Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;)V
    .locals 4
    .param p1, "state"    # Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;

    .prologue
    const v3, 0x7f02011f

    const v2, -0xe8bcbf

    .line 17
    const v0, 0x7f020121

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/ConnectionStateTextView;->setBackgroundResource(I)V

    .line 18
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/ConnectionStateTextView;->setTextColor(I)V

    .line 19
    sget-object v0, Lcom/liquable/nemo/chat/ConnectionStateTextView$1;->$SwitchMap$com$liquable$nemo$android$service$KeepConnectionAndroidService$ConnectionState:[I

    invoke-virtual {p1}, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 52
    :goto_0
    return-void

    .line 21
    :pswitch_0
    invoke-virtual {p0, v3}, Lcom/liquable/nemo/chat/ConnectionStateTextView;->setBackgroundResource(I)V

    .line 22
    invoke-virtual {p0, v2}, Lcom/liquable/nemo/chat/ConnectionStateTextView;->setTextColor(I)V

    .line 23
    const v0, 0x7f0d012e

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/ConnectionStateTextView;->show(I)V

    goto :goto_0

    .line 27
    :pswitch_1
    const v0, 0x7f0d0130

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/ConnectionStateTextView;->show(I)V

    goto :goto_0

    .line 30
    :pswitch_2
    const v0, 0x7f0d0131

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/ConnectionStateTextView;->show(I)V

    goto :goto_0

    .line 33
    :pswitch_3
    invoke-virtual {p0, v3}, Lcom/liquable/nemo/chat/ConnectionStateTextView;->setBackgroundResource(I)V

    .line 34
    invoke-virtual {p0, v2}, Lcom/liquable/nemo/chat/ConnectionStateTextView;->setTextColor(I)V

    .line 35
    const v0, 0x7f0d0132

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/ConnectionStateTextView;->hide(I)V

    goto :goto_0

    .line 38
    :pswitch_4
    invoke-virtual {p0, v3}, Lcom/liquable/nemo/chat/ConnectionStateTextView;->setBackgroundResource(I)V

    .line 39
    invoke-virtual {p0, v2}, Lcom/liquable/nemo/chat/ConnectionStateTextView;->setTextColor(I)V

    .line 40
    const v0, 0x7f0d0133

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/ConnectionStateTextView;->show(I)V

    goto :goto_0

    .line 43
    :pswitch_5
    const v0, 0x7f0d0134

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/ConnectionStateTextView;->show(I)V

    goto :goto_0

    .line 46
    :pswitch_6
    const v0, 0x7f0d0136

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/ConnectionStateTextView;->show(I)V

    goto :goto_0

    .line 49
    :pswitch_7
    const v0, 0x7f0d013d

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/ConnectionStateTextView;->show(I)V

    goto :goto_0

    .line 19
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
