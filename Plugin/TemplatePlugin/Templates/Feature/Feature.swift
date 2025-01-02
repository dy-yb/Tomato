// Module.swift 파일
import ProjectDescription

// scaffold 명령어 시 받을 인자.
let name: Template.Attribute = .required("name")

// 템플릿 선언.
let moduleTemplate = Template(
    description: "A template for a new feature module",
    attributes: [
        name
    ],
    items: ModuleTemplate.allCases.map { $0.item }
)

enum ModuleTemplate: CaseIterable {
    case view

    // 템플릿 내부에 추가할 파일.
    var item: Template.Item {
        switch self {
        case .view:
            return .file(path: .basePath + "/ContentView.swift", templatePath: "ContentView.stencil")
        }
    }
}

// 템플릿을 추가할 기본 경로.
extension String {
    static var basePath: Self {
        return "Projects/\(name)"
    }
}
