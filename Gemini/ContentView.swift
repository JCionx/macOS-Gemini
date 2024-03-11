import SwiftUI
import WebKit

struct WebView: NSViewRepresentable {

    let url: URL

    func makeNSView(context: Context) -> WKWebView {
        let webView = WKWebView()
        webView.load(URLRequest(url: url))
        return webView
    }

    func updateNSView(_ uiView: WKWebView, context: Context) {
        // Optional: Update logic for the webview here
    }
}

struct ContentView: View {
    let url = URL(string: "https://gemini.google.com/")!
    
    var body: some View {
        VStack {
            WebView(url: url)
        }
        .cornerRadius(5)
        .padding(.horizontal, 4.5)
    }
}

#Preview {
    ContentView()
        .frame(width: 385, height: 525)
}
