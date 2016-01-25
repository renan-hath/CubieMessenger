.class public Lcom/liquable/volley/request/VolleyErrorDispatcher;
.super Ljava/lang/Object;
.source "VolleyErrorDispatcher.java"


# instance fields
.field private final handler:Lcom/liquable/volley/request/VolleyErrorHandler;


# direct methods
.method public constructor <init>(Lcom/liquable/volley/request/VolleyErrorHandler;)V
    .locals 0
    .param p1, "handler"    # Lcom/liquable/volley/request/VolleyErrorHandler;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/liquable/volley/request/VolleyErrorDispatcher;->handler:Lcom/liquable/volley/request/VolleyErrorHandler;

    .line 21
    return-void
.end method


# virtual methods
.method public dispatch(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "e"    # Lcom/android/volley/VolleyError;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 24
    instance-of v0, p1, Lcom/android/volley/NoConnectionError;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/liquable/volley/request/VolleyErrorDispatcher;->handler:Lcom/liquable/volley/request/VolleyErrorHandler;

    check-cast p1, Lcom/android/volley/NoConnectionError;

    .end local p1    # "e":Lcom/android/volley/VolleyError;
    invoke-interface {v0, p1}, Lcom/liquable/volley/request/VolleyErrorHandler;->handleNoConnectionError(Lcom/android/volley/NoConnectionError;)V

    .line 39
    :goto_0
    return-void

    .line 26
    .restart local p1    # "e":Lcom/android/volley/VolleyError;
    :cond_0
    instance-of v0, p1, Lcom/android/volley/TimeoutError;

    if-eqz v0, :cond_1

    .line 27
    iget-object v0, p0, Lcom/liquable/volley/request/VolleyErrorDispatcher;->handler:Lcom/liquable/volley/request/VolleyErrorHandler;

    check-cast p1, Lcom/android/volley/TimeoutError;

    .end local p1    # "e":Lcom/android/volley/VolleyError;
    invoke-interface {v0, p1}, Lcom/liquable/volley/request/VolleyErrorHandler;->handleTimeoutError(Lcom/android/volley/TimeoutError;)V

    goto :goto_0

    .line 28
    .restart local p1    # "e":Lcom/android/volley/VolleyError;
    :cond_1
    instance-of v0, p1, Lcom/android/volley/NetworkError;

    if-eqz v0, :cond_2

    .line 29
    iget-object v0, p0, Lcom/liquable/volley/request/VolleyErrorDispatcher;->handler:Lcom/liquable/volley/request/VolleyErrorHandler;

    check-cast p1, Lcom/android/volley/NetworkError;

    .end local p1    # "e":Lcom/android/volley/VolleyError;
    invoke-interface {v0, p1}, Lcom/liquable/volley/request/VolleyErrorHandler;->handleNetworkError(Lcom/android/volley/NetworkError;)V

    goto :goto_0

    .line 30
    .restart local p1    # "e":Lcom/android/volley/VolleyError;
    :cond_2
    instance-of v0, p1, Lcom/android/volley/AuthFailureError;

    if-eqz v0, :cond_3

    .line 31
    iget-object v0, p0, Lcom/liquable/volley/request/VolleyErrorDispatcher;->handler:Lcom/liquable/volley/request/VolleyErrorHandler;

    check-cast p1, Lcom/android/volley/AuthFailureError;

    .end local p1    # "e":Lcom/android/volley/VolleyError;
    invoke-interface {v0, p1}, Lcom/liquable/volley/request/VolleyErrorHandler;->handleAuthFailureError(Lcom/android/volley/AuthFailureError;)V

    goto :goto_0

    .line 32
    .restart local p1    # "e":Lcom/android/volley/VolleyError;
    :cond_3
    instance-of v0, p1, Lcom/android/volley/ServerError;

    if-eqz v0, :cond_4

    .line 33
    iget-object v0, p0, Lcom/liquable/volley/request/VolleyErrorDispatcher;->handler:Lcom/liquable/volley/request/VolleyErrorHandler;

    check-cast p1, Lcom/android/volley/ServerError;

    .end local p1    # "e":Lcom/android/volley/VolleyError;
    invoke-interface {v0, p1}, Lcom/liquable/volley/request/VolleyErrorHandler;->handleServerError(Lcom/android/volley/ServerError;)V

    goto :goto_0

    .line 34
    .restart local p1    # "e":Lcom/android/volley/VolleyError;
    :cond_4
    instance-of v0, p1, Lcom/android/volley/ParseError;

    if-eqz v0, :cond_5

    .line 35
    iget-object v0, p0, Lcom/liquable/volley/request/VolleyErrorDispatcher;->handler:Lcom/liquable/volley/request/VolleyErrorHandler;

    check-cast p1, Lcom/android/volley/ParseError;

    .end local p1    # "e":Lcom/android/volley/VolleyError;
    invoke-interface {v0, p1}, Lcom/liquable/volley/request/VolleyErrorHandler;->handleParseError(Lcom/android/volley/ParseError;)V

    goto :goto_0

    .line 37
    .restart local p1    # "e":Lcom/android/volley/VolleyError;
    :cond_5
    iget-object v0, p0, Lcom/liquable/volley/request/VolleyErrorDispatcher;->handler:Lcom/liquable/volley/request/VolleyErrorHandler;

    invoke-interface {v0, p1}, Lcom/liquable/volley/request/VolleyErrorHandler;->handleDefault(Lcom/android/volley/VolleyError;)V

    goto :goto_0
.end method
