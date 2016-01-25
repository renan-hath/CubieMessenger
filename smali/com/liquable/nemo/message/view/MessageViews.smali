.class public Lcom/liquable/nemo/message/view/MessageViews;
.super Ljava/lang/Object;
.source "MessageViews.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/message/view/MessageViews$Range;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setNicknameHighlight(Landroid/text/Spannable;Ljava/lang/String;Lcom/liquable/nemo/friend/model/FriendManager;)V
    .locals 9
    .param p0, "spannable"    # Landroid/text/Spannable;
    .param p1, "topic"    # Ljava/lang/String;
    .param p2, "friendManager"    # Lcom/liquable/nemo/friend/model/FriendManager;

    .prologue
    const/4 v6, 0x0

    .line 33
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 50
    :cond_0
    return-void

    .line 36
    :cond_1
    invoke-virtual {p2, p1}, Lcom/liquable/nemo/friend/model/FriendManager;->listFriendsNicknameInTopic(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 37
    .local v4, "nicknames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v7, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v7}, Lcom/liquable/nemo/util/Pref;->getNickname()Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, "myName":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "content":Ljava/lang/String;
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    const-class v8, Landroid/text/style/ForegroundColorSpan;

    .line 39
    invoke-interface {p0, v6, v7, v8}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/ForegroundColorSpan;

    .line 42
    .local v5, "spans":[Landroid/text/style/ForegroundColorSpan;
    array-length v7, v5

    :goto_0
    if-ge v6, v7, :cond_2

    aget-object v1, v5, v6

    .line 43
    .local v1, "foregroundColorSpan":Landroid/text/style/ForegroundColorSpan;
    invoke-interface {p0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 42
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 45
    .end local v1    # "foregroundColorSpan":Landroid/text/style/ForegroundColorSpan;
    :cond_2
    invoke-static {p0, v2, v0}, Lcom/liquable/nemo/message/view/MessageViews;->setNicknameHighlight(Landroid/text/Spannable;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 48
    .local v3, "nickname":Ljava/lang/String;
    invoke-static {p0, v3, v0}, Lcom/liquable/nemo/message/view/MessageViews;->setNicknameHighlight(Landroid/text/Spannable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static setNicknameHighlight(Landroid/text/Spannable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p0, "spannable"    # Landroid/text/Spannable;
    .param p1, "nickname"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    const/4 v8, 0x0

    .line 55
    if-eqz p0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 95
    :cond_0
    return-void

    .line 59
    :cond_1
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    const-class v10, Landroid/text/style/ImageSpan;

    invoke-interface {p0, v8, v9, v10}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/ImageSpan;

    .line 60
    .local v5, "spans":[Landroid/text/style/ImageSpan;
    const/4 v6, 0x0

    .line 61
    .local v6, "startPos":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v7, "validRanges":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/view/MessageViews$Range;>;"
    array-length v9, v5

    if-eqz v9, :cond_6

    .line 63
    array-length v9, v5

    :goto_0
    if-ge v8, v9, :cond_3

    aget-object v1, v5, v8

    .line 64
    .local v1, "imageSpan":Landroid/text/style/ImageSpan;
    invoke-interface {p0, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 65
    .local v4, "spanStart":I
    invoke-interface {p0, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 66
    .local v0, "end":I
    if-ge v6, v4, :cond_2

    .line 67
    new-instance v10, Lcom/liquable/nemo/message/view/MessageViews$Range;

    invoke-direct {v10, v6, v4, v11}, Lcom/liquable/nemo/message/view/MessageViews$Range;-><init>(IILcom/liquable/nemo/message/view/MessageViews$1;)V

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_2
    move v6, v0

    .line 63
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 71
    .end local v0    # "end":I
    .end local v1    # "imageSpan":Landroid/text/style/ImageSpan;
    .end local v4    # "spanStart":I
    :cond_3
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v8

    if-ge v6, v8, :cond_4

    .line 72
    new-instance v8, Lcom/liquable/nemo/message/view/MessageViews$Range;

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v9

    invoke-direct {v8, v6, v9, v11}, Lcom/liquable/nemo/message/view/MessageViews$Range;-><init>(IILcom/liquable/nemo/message/view/MessageViews$1;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_4
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/liquable/nemo/message/view/MessageViews$Range;

    .line 79
    .local v3, "range":Lcom/liquable/nemo/message/view/MessageViews$Range;
    iget v9, v3, Lcom/liquable/nemo/message/view/MessageViews$Range;->start:I

    invoke-virtual {p2, p1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 80
    .local v2, "pos":I
    :goto_2
    const/4 v9, -0x1

    if-eq v2, v9, :cond_5

    .line 81
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    add-int v0, v2, v9

    .line 82
    .restart local v0    # "end":I
    iget v9, v3, Lcom/liquable/nemo/message/view/MessageViews$Range;->end:I

    if-gt v0, v9, :cond_5

    .line 86
    new-instance v9, Landroid/text/style/ForegroundColorSpan;

    const v10, -0x658100

    invoke-direct {v9, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v10, 0x21

    invoke-interface {p0, v9, v2, v0, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 91
    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 92
    goto :goto_2

    .line 75
    .end local v0    # "end":I
    .end local v2    # "pos":I
    .end local v3    # "range":Lcom/liquable/nemo/message/view/MessageViews$Range;
    :cond_6
    new-instance v9, Lcom/liquable/nemo/message/view/MessageViews$Range;

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v10

    invoke-direct {v9, v8, v10, v11}, Lcom/liquable/nemo/message/view/MessageViews$Range;-><init>(IILcom/liquable/nemo/message/view/MessageViews$1;)V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
