package com.specmate.export.internal.exporters;

import static com.specmate.export.internal.exporters.ExportUtil.replaceInvalidChars;

import java.util.List;

import org.osgi.service.component.annotations.Component;

import com.specmate.export.api.IExporter;
import com.specmate.model.testspecification.ParameterAssignment;
import com.specmate.model.testspecification.TestCase;
import com.specmate.model.testspecification.TestParameter;
import com.specmate.model.testspecification.TestSpecification;

/** Exports a test specification to javascript */
@Component(immediate = true, service = IExporter.class)
public class JavascriptTestSpecificationExporter extends TestSpecificationExporterBase {

	public JavascriptTestSpecificationExporter() {
		super("Javascript");
	}

	@Override
	protected String generateFileName(TestSpecification testSpecification) {
		return replaceInvalidChars(testSpecification.getName()) + ".js";
	}

	@Override
	protected void generateHeader(StringBuilder sb, TestSpecification testSpecification,
			List<TestParameter> parameters) {
		appendDateComment(sb);
		sb.append("describe('");
		sb.append(replaceInvalidChars(testSpecification.getName()));
		sb.append("', () => {\n\n");
	}

	@Override
	protected void generateFooter(StringBuilder sb, TestSpecification testSpecification) {
		sb.append("});");
	}

	@Override
	protected void generateTestCaseFooter(StringBuilder sb, TestCase tc) {
		sb.append("', () => {\n");
		sb.append("\t\tthrow new Error('not implemented yet');\n");
		sb.append("\t});\n\n");
	}

	@Override
	protected void generateTestCaseHeader(StringBuilder sb, TestSpecification ts, TestCase tc) {
		sb.append("\t/*\n");
		sb.append("\t * Testfall: ");
		sb.append(tc.getName());
		sb.append("\n\t */\n");
		sb.append("\tit('");
		sb.append(replaceInvalidChars(ts.getName()));
	}

	@Override
	protected void generateTestCaseParameterAssignments(StringBuilder sb, List<ParameterAssignment> assignments,
			List<TestParameter> parameters) {
		for (ParameterAssignment pAssignment : assignments) {
			appendParameterValue(sb, pAssignment);
		}
	}

	@Override
	public String getProjectName() {
		return null;
	}

	@Override
	public void setProjectName(String project) {

	}

}
