class HomeController < ApplicationController
  def index; end

  def process_urls
    urls = params[:urls].split("\n").map(&:strip)

    # Initialize progress bars
    Turbo::StreamsChannel.broadcast_replace_to(
      "download_progress",
      target: "download_progress",
      partial: "home/download_progress",
      locals: { urls: urls, progress: Array.new(urls.size, 0) }
    )

    urls.each_with_index do |url, index|
      100.times do |percent|
        Turbo::StreamsChannel.broadcast_update_to(
          "download_progress",
          target: "progress_#{index}",
          partial: "home/progress_bar",
          locals: { url: url, progress: percent + 1, index: index }
        )
        sleep 0.01 # Simulate download time
      end
    end

    redirect_to root_path, notice: "Processed #{urls.count} URLs"
  end
end
