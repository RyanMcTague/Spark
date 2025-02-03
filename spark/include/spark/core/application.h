#pragma once

namespace Spark {
    class Application
    {
    public:
        Application() = default;
        Application(const Application&) = default;
        Application(Application&&) = default;

        ~Application() = default;

        Application& operator=(const Application&) = default;
        Application& operator=(Application&&) = default;

        void Initialize();
    };
}